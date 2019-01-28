.class public Lc8/XHd;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YHd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YHd;


# direct methods
.method constructor <init>(Lc8/YHd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/YHd;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/XHd;->this$0:Lc8/YHd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lc8/XHd;->this$0:Lc8/YHd;

    invoke-static {v0}, Lc8/YHd;->access$200(Lc8/YHd;)Lc8/OId;

    move-result-object v0

    iget-object v1, p0, Lc8/XHd;->this$0:Lc8/YHd;

    .line 90
    invoke-static {v1}, Lc8/YHd;->access$000(Lc8/YHd;)Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    move-result-object v1

    iget-object v2, p0, Lc8/XHd;->this$0:Lc8/YHd;

    invoke-static {v2}, Lc8/YHd;->access$100(Lc8/YHd;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lc8/OId;->onChange(Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;I)V

    .line 91
    return-void
.end method
