.class public final Lc8/Bcg;
.super Landroid/os/AsyncTask;
.source "Layouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ecg;->doLayoutAsync(Lc8/sdg;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$component:Lc8/tbg;

.field final synthetic val$position:I

.field final synthetic val$templateViewHolder:Lc8/sdg;


# direct methods
.method constructor <init>(Lc8/sdg;ILc8/tbg;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Bcg;->val$templateViewHolder:Lc8/sdg;

    iput p2, p0, Lc8/Bcg;->val$position:I

    iput-object p3, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Bcg;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/Bcg;->val$templateViewHolder:Lc8/sdg;

    invoke-virtual {v0}, Lc8/sdg;->getHolderPosition()I

    move-result v0

    iget v1, p0, Lc8/Bcg;->val$position:I

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    iget-object v1, p0, Lc8/Bcg;->val$templateViewHolder:Lc8/sdg;

    invoke-virtual {v1}, Lc8/sdg;->getLayoutContext()Lc8/AZf;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Ecg;->doSafeLayout(Lc8/tbg;Lc8/AZf;)V

    .line 62
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Bcg;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 67
    iget v0, p0, Lc8/Bcg;->val$position:I

    iget-object v1, p0, Lc8/Bcg;->val$templateViewHolder:Lc8/sdg;

    invoke-virtual {v1}, Lc8/sdg;->getHolderPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lc8/Bcg;->val$component:Lc8/tbg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Ecg;->setLayout(Lc8/tbg;Z)V

    .line 72
    :cond_0
    return-void
.end method
