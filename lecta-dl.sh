#!/bin/sh
URL='https://reader.lecta.rosuchebnik.ru/read/7836-62?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJsZWN0YV9hcGkiLCJhdWQiOiJib29rX3JlYWRlciIsInN1YiI6IjE1NTIwMDQiLCJpYXQiOjE2MzA5MzcyOTksImV4cCI6MTY3MzAzODc5OSwidXNlcl9pZCI6IjY0Nzc3IiwiYm9va19pZCI6Ijc4MzYtNjIiLCJlbWFpbCI6InZuLWtydWNrQHJhbWJsZXIucnUiLCJuYW1lIjoi0JrRgNGO0YfQutC-0LIg0JLQu9Cw0LTQuNC80LjRgCDQndC40LrQvtC70LDQtdCy0LjRhyIsInRpdGxlIjoi0J7RgdC90L7QstGLINCx0LXQt9C-0L_QsNGB0L3QvtGB0YLQuCDQttC40LfQvdC10LTQtdGP0YLQtdC70YzQvdC-0YHRgtC4LiDQkdCw0LfQvtCy0YvQuSDRg9GA0L7QstC10L3RjC4gMTEg0LrQu9Cw0YHRgSIsInJvbGUiOiJyZWFkZXIiLCJ1bHIiOmZhbHNlLCJiYXJfb2ZmIjpmYWxzZX0.O9FvZH8xpARNrH8ISAxR-jk1gee3DY25kd-Ypp1mEAGdiBqjvqeedIxrDQno77aqL8n2VLdZ2-epgw9ZoY5vWdGfXlmVRz3wjIxaoBM2aUOhbti-5QoZzDGsiSq45mzu_a22_egxk6EzBKk3p1TxPhUW4rVD7ijBqej6WA3Zy1WKc1lSdpgWiRAApE-b0guB8Rco3r4T1iwHnp84XuZsQIkug4dj_hdbFQepkdFzaUoCllP8m96kAb1M1_wEi89KzJAYi7JkdBB3jt6APWYxmMCPegUw9APF-Fa0-tjeiYaf6yg_SKxeylBmD8p_NCRhvdfzcSopX-d7ama_1TZdiQ'
TOKEN=$(printf "%s" "$URL" | sed -e "s/.*\?token\=//")
BOOKURL=$(printf "%s" "$URL" | sed -e "s/\?token\=.*//")

for i in $(seq 150 329)
do
	INDEX=$(printf "%06d" "$i")
	HEXNUM=$(printf "%x" "$i")
	wget -O "bg${INDEX}.png" "${BOOKURL}/data/bg${HEXNUM}.png?token=${TOKEN}"
done
