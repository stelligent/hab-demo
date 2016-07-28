#!/usr/bin/env bats

@test "site is available" {
  result="$(curl -Is localhost:8080 | head -1 | awk '{print $2}')"
  [ "$result" = "200" ]
}

@test "site content matches config" {
  result="$(curl localhost:8080)"
  [ "$result" = "Hello, World!" ]
}
