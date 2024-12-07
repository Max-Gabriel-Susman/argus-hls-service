# Argus Stream Service Roadmap 

## [12/07/24]

As of right now this service can serve a stream of mp4 over HLS
    * we're in the process of setting up EKS hosting for this one 

and the ios client can receive a stream of mp4 over HLS

There's a lot of fun stuff we can do with this one but I think it would be good to be conservative about goals in the short term and just get out an MVP. 

The original goal was to stream from iOS to stream service to MacOS, perhaps I'll just do that

Let's try and move the iOS ingress logic we got working last night over to the MacOS egress app I shelfed a while back

Successfully go the iOS ingress logic moved to MacOS in argus-egress-macos

So now we need to actually create an iOS ingresss, then it's just a matter of piping this all through the server 

not sure what exactly it was but something about including the videos directoires content was causing pushes to break so I git ignored it

also we're changing the name from argus-hls-service to argus-hls-service