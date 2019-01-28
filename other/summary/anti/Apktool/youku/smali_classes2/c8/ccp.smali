.class public Lc8/ccp;
.super Ljava/lang/Object;
.source "YoukuSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dcp;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/dcp;


# direct methods
.method constructor <init>(Lc8/dcp;)V
    .locals 0
    .param p1, "this$1"    # Lc8/dcp;

    .prologue
    .line 347
    iput-object p1, p0, Lc8/ccp;->this$1:Lc8/dcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lc8/ccp;->this$1:Lc8/dcp;

    iget-object v0, v0, Lc8/dcp;->this$0:Lc8/hcp;

    invoke-static {v0}, Lc8/hcp;->access$800(Lc8/hcp;)Lc8/fcp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ccp;->this$1:Lc8/dcp;

    iget-object v0, v0, Lc8/dcp;->this$0:Lc8/hcp;

    invoke-static {v0}, Lc8/hcp;->access$900(Lc8/hcp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ccp;->this$1:Lc8/dcp;

    iget-object v0, v0, Lc8/dcp;->this$0:Lc8/hcp;

    .line 351
    invoke-static {v0}, Lc8/hcp;->access$900(Lc8/hcp;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    iget-object v0, p0, Lc8/ccp;->this$1:Lc8/dcp;

    iget-object v0, v0, Lc8/dcp;->this$0:Lc8/hcp;

    invoke-static {v0}, Lc8/hcp;->access$800(Lc8/hcp;)Lc8/fcp;

    move-result-object v0

    iget-object v1, p0, Lc8/ccp;->this$1:Lc8/dcp;

    iget-object v1, v1, Lc8/dcp;->this$0:Lc8/hcp;

    invoke-static {v1}, Lc8/hcp;->access$900(Lc8/hcp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/fcp;->onRequestSuggestion(Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void
.end method
