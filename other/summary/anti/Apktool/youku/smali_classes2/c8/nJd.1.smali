.class public Lc8/nJd;
.super Ljava/lang/Object;
.source "InternalRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oJd;->deliverError(Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oJd;

.field final synthetic val$anError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

.field final synthetic val$request:Lc8/VHd;


# direct methods
.method constructor <init>(Lc8/oJd;Lc8/VHd;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oJd;

    .prologue
    .line 162
    iput-object p1, p0, Lc8/nJd;->this$0:Lc8/oJd;

    iput-object p2, p0, Lc8/nJd;->val$request:Lc8/VHd;

    iput-object p3, p0, Lc8/nJd;->val$anError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lc8/nJd;->val$request:Lc8/VHd;

    iget-object v1, p0, Lc8/nJd;->val$anError:Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    invoke-virtual {v0, v1}, Lc8/VHd;->deliverError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 165
    iget-object v0, p0, Lc8/nJd;->val$request:Lc8/VHd;

    invoke-virtual {v0}, Lc8/VHd;->finish()V

    .line 166
    return-void
.end method
