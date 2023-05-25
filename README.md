# TopshotGraphQL
Playground for TopshotGraphQL

# Instruction to run the App
1. cd to base folder
2. if you have never install cocoapods, run `brew install cocoapods`
3. run `pod install` to install dependencies 
4. open the workspace file `TG.workspace` instead of the project file to open Xcode after step 3 is done

# Dependencies
```
Installing Apollo (1.1.3)
Installing RxSwift (6.5.0)
```
Apollo is chosen to be the one to handle GraphQL request, response objects and services 
RxSwift is chosen to help implement MVVM 

# Apollo Guide
1. Schema downloading run
```
apollo schema:download --endpoint=https://public-api.nbatopshot.com/graphql schema.json
```
2. Init config for auto gen 
run `./Pods/Apollo/apollo-ios-cli init --schema-namespace TG --module-type other --target-name TG --path './TG/API.swift'`
3. New query can be added to TG/GraphQL.graphql 
run `.Pods/Apollo/apollo-ios-cli generate` to update schema after new Queries are created.

