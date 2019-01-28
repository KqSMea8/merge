.class public Lc8/acp;
.super Ljava/lang/Object;
.source "YoukuSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hcp;


# direct methods
.method constructor <init>(Lc8/hcp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hcp;

    .prologue
    .line 78
    iput-object p1, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 80
    iget-object v3, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v3}, Lc8/hcp;->access$000(Lc8/hcp;)Lc8/ecp;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v3}, Lc8/hcp;->access$000(Lc8/hcp;)Lc8/ecp;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lc8/ecp;->onQueryTextChange(Ljava/lang/String;)Z

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 88
    .local v0, "hasText":Z
    :goto_0
    iget-object v3, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v3}, Lc8/hcp;->access$200(Lc8/hcp;)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_2

    iget-object v3, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v3}, Lc8/hcp;->access$100(Lc8/hcp;)Lc8/gcp;

    move-result-object v3

    invoke-virtual {v3}, Lc8/gcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v3}, Lc8/hcp;->access$300(Lc8/hcp;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v3}, Lc8/hcp;->access$500(Lc8/hcp;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v0, :cond_4

    iget-object v5, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-static {v5}, Lc8/hcp;->access$400(Lc8/hcp;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lc8/acp;->this$0:Lc8/hcp;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/hcp;->access$600(Lc8/hcp;Ljava/lang/String;)V

    .line 93
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v2

    .line 86
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v3, v4

    .line 88
    goto :goto_1

    :cond_3
    move v3, v4

    .line 89
    goto :goto_2

    :cond_4
    move v2, v4

    .line 90
    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 99
    return-void
.end method
