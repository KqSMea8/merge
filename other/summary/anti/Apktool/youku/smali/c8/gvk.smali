.class public interface abstract Lc8/gvk;
.super Ljava/lang/Object;
.source "FollowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnCheckFollowListListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract OnCheckFollowListFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V
.end method

.method public abstract OnCheckFollowListSuccess(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
