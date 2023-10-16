package main

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"

	"github.com/yumekiti/cocoroiki-bff/interface/handler"
	"github.com/yumekiti/cocoroiki-bff/config"
)

func main() {
	// Load .env file
	config.LoadEnv()

	// Handler
	strapiHandler := handler.NewStrapiHandler()
	fastapiHandler := handler.NewFastapiHandler()

	// Echo instance
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowHeaders: []string{"*"},
		AllowOrigins: []string{"*"},
		AllowMethods: []string{"*"},
	}))

	// Router
	handler.InitRouting(
		e,
		strapiHandler,
		fastapiHandler,
	)

	// Start server
	e.Logger.Fatal(e.Start(":8080"))
}
