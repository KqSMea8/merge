.class public Lc8/QLj;
.super Ljava/lang/Object;
.source "YoukuProvisionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ULj;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ULj;


# direct methods
.method constructor <init>(Lc8/ULj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ULj;

    .prologue
    .line 94
    iput-object p1, p0, Lc8/QLj;->this$0:Lc8/ULj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lc8/QLj;->this$0:Lc8/ULj;

    invoke-static {v0}, Lc8/ULj;->access$000(Lc8/ULj;)Lc8/SLj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/QLj;->this$0:Lc8/ULj;

    invoke-static {v0}, Lc8/ULj;->access$000(Lc8/ULj;)Lc8/SLj;

    move-result-object v0

    invoke-interface {v0}, Lc8/SLj;->onAgreeClick()V

    .line 100
    :cond_0
    return-void
.end method
