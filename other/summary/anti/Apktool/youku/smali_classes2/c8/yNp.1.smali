.class public Lc8/yNp;
.super Ljava/lang/Object;
.source "EmptyCacheParser.java"

# interfaces
.implements Lc8/DNp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.EmptyCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 2
    .param p1, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 14
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "mtopsdk.EmptyCacheParser"

    const-string/jumbo v1, "[parse]EmptyCacheParser parse called"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method
