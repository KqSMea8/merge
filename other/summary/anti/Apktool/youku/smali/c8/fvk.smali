.class public interface abstract Lc8/fvk;
.super Ljava/lang/Object;
.source "FollowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnBatchCancelFollowListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/youku/phone/follow/manager/FollowManager$RequestError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract OnBatchCancelFollowSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
