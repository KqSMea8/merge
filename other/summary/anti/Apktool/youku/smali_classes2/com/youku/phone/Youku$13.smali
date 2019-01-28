.class public final Lcom/youku/phone/Youku$13;
.super Ljava/util/HashMap;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 778
    const-string/jumbo v0, "motu-remote"

    const-string/jumbo v1, "com.taobao.android.tlog.AccsTLogService"

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/Youku$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    return-void
.end method
