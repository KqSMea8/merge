.class public interface abstract Lc8/xdn;
.super Ljava/lang/Object;
.source "ISQLiteManager.java"


# virtual methods
.method public abstract addToSubscribeGuideShowed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getPlayTimesByShowId(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPlayTimesByUid(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoInfoUseID(Ljava/lang/String;)Lcom/youku/vo/HistoryVideoInfo;
.end method

.method public abstract hasShowedSubscribeGuide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
.end method

.method public abstract isInit()Z
.end method

.method public abstract readPlayHistory()Z
.end method
