.class public Lcom/ut/mini/UTAnalytics$1;
.super Ljava/lang/Object;
.source "UTAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTAnalytics;->setChannel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTAnalytics;

.field final synthetic val$aChannel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTAnalytics;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/ut/mini/UTAnalytics$1;->this$0:Lcom/ut/mini/UTAnalytics;

    iput-object p2, p0, Lcom/ut/mini/UTAnalytics$1;->val$aChannel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lzb;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/ut/mini/UTAnalytics$1;->val$aChannel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/ZBb;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method
