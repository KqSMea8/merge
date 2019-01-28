.class public Lc8/tYm;
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


# direct methods
.method constructor <init>(Lc8/AYm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/AYm;

    .prologue
    .line 244
    iput-object p1, p0, Lc8/tYm;->this$0:Lc8/AYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lc8/sYm;

    invoke-direct {v0, p0}, Lc8/sYm;-><init>(Lc8/tYm;)V

    invoke-static {v0}, Lc8/RYm;->getLayerConfig(Lc8/QYm;)V

    .line 257
    return-void
.end method
