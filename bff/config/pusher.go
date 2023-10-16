package config

import (
	"github.com/pusher/pusher-http-go/v5"
)

func NewPusherClient() *pusher.Client {
	pusherClient := pusher.Client{
		AppID:   GetEnv("PUSHER_APP_ID", ""),
		Key:     GetEnv("PUSHER_APP_KEY", ""),
		Secret:  GetEnv("PUSHER_APP_SECRET", ""),
		Cluster: GetEnv("PUSHER_APP_CLUSTER", ""),
	}

	return &pusherClient
}