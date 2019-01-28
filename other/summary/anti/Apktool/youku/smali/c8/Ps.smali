.class public Lc8/Ps;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rs;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Rs;


# direct methods
.method constructor <init>(Lc8/Rs;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Rs;

    .prologue
    .line 799
    iput-object p1, p0, Lc8/Ps;->this$1:Lc8/Rs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lc8/Ps;->this$1:Lc8/Rs;

    iget-object v1, p0, Lc8/Ps;->this$1:Lc8/Rs;

    iget-object v1, v1, Lc8/Rs;->this$0:Lc8/Ss;

    invoke-virtual {v0, v1}, Lc8/Rs;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lc8/Ps;->this$1:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->dismiss()V

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lc8/Ps;->this$1:Lc8/Rs;

    invoke-virtual {v0}, Lc8/Rs;->computeContentWidth()V

    .line 809
    iget-object v0, p0, Lc8/Ps;->this$1:Lc8/Rs;

    invoke-static {v0}, Lc8/Rs;->access$001(Lc8/Rs;)V

    goto :goto_0
.end method
