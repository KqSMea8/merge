.class public Lc8/bwb;
.super Ljava/lang/Object;
.source "WXErrorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cwb;->setRetryListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/cwb;


# direct methods
.method constructor <init>(Lc8/cwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/cwb;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/bwb;->this$0:Lc8/cwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/bwb;->this$0:Lc8/cwb;

    invoke-static {v0}, Lc8/cwb;->access$000(Lc8/cwb;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/bwb;->this$0:Lc8/cwb;

    invoke-static {v0}, Lc8/cwb;->access$000(Lc8/cwb;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 51
    :cond_0
    return-void
.end method
