.class public Lc8/xYm;
.super Ljava/lang/Object;
.source "ConfigUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/AYm;->updateConfig(Lcom/alibaba/poplayer/PopLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/AYm;

.field final synthetic val$popLayer:Lcom/alibaba/poplayer/PopLayer;


# direct methods
.method constructor <init>(Lc8/AYm;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 0
    .param p1, "this$0"    # Lc8/AYm;

    .prologue
    .line 279
    iput-object p1, p0, Lc8/xYm;->this$0:Lc8/AYm;

    iput-object p2, p0, Lc8/xYm;->val$popLayer:Lcom/alibaba/poplayer/PopLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lc8/wYm;

    invoke-direct {v0, p0}, Lc8/wYm;-><init>(Lc8/xYm;)V

    invoke-static {v0}, Lc8/RYm;->getViewConfig(Lc8/QYm;)V

    .line 292
    return-void
.end method
