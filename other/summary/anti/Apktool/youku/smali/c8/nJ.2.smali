.class public final Lc8/nJ;
.super Ljava/lang/Object;
.source "TaobaoNetworkAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/TaobaoNetworkAdapter;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lc8/xJ;

    invoke-direct {v0}, Lc8/xJ;-><init>()V

    .line 50
    .local v0, "avfsCacheImpl":Lc8/xJ;
    invoke-virtual {v0}, Lc8/xJ;->initialize()V

    .line 51
    new-instance v1, Lc8/mJ;

    invoke-direct {v1, p0}, Lc8/mJ;-><init>(Lc8/nJ;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc8/nN;->addCache(Lc8/kN;Lc8/oN;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "avfsCacheImpl":Lc8/xJ;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
