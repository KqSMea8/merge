.class public Lc8/Ezb;
.super Ljava/lang/Object;
.source "UTDefaultConfMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fzb;->requestOnlineConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fzb;


# direct methods
.method constructor <init>(Lc8/Fzb;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lc8/Ezb;->this$0:Lc8/Fzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lc8/Ezb;->this$0:Lc8/Fzb;

    invoke-virtual {v0}, Lc8/Fzb;->init()V

    .line 17
    iget-object v0, p0, Lc8/Ezb;->this$0:Lc8/Fzb;

    invoke-virtual {v0}, Lc8/Fzb;->dispatchLocalCacheConfigs()V

    .line 18
    return-void
.end method
