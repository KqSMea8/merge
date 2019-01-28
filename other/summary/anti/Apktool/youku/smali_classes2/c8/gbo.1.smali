.class public Lc8/gbo;
.super Ljava/lang/Object;
.source "YoukuUtils.java"


# static fields
.field public static final CLICK_INTERVAL_LONGER:J = 0x3e8L

.field public static final CLICK_INTERVAL_NORMAL:J = 0x1f4L

.field public static currentClickTime:J

.field public static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    sput-wide v0, Lc8/gbo;->lastClickTime:J

    .line 19
    sput-wide v0, Lc8/gbo;->currentClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClickEvent()Z
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lc8/gbo;->checkClickEvent(J)Z

    move-result v0

    return v0
.end method

.method public static checkClickEvent(J)Z
    .locals 4
    .param p0, "interval"    # J

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    sput-wide v0, Lc8/gbo;->currentClickTime:J

    sget-wide v2, Lc8/gbo;->lastClickTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 39
    sget-wide v0, Lc8/gbo;->currentClickTime:J

    sput-wide v0, Lc8/gbo;->lastClickTime:J

    .line 40
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 42
    :cond_0
    sget-wide v0, Lc8/gbo;->currentClickTime:J

    sput-wide v0, Lc8/gbo;->lastClickTime:J

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWebUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "showId"    # Ljava/lang/String;
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://v.youku.com/v_show/id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".html?x&sharefrom=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-static {p0}, Lc8/gbo;->getWebUrlByShowId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWebUrlByShowId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "showId"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://list.youku.com/show/id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".html?x&sharefrom=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugger()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
