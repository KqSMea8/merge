.class public Lc8/Qs;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lc8/Rs;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Rs;

    .prologue
    .line 814
    iput-object p1, p0, Lc8/Qs;->this$1:Lc8/Rs;

    iput-object p2, p0, Lc8/Qs;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lc8/Qs;->this$1:Lc8/Rs;

    iget-object v1, v1, Lc8/Rs;->this$0:Lc8/Ss;

    invoke-virtual {v1}, Lc8/Ss;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 818
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 819
    iget-object v1, p0, Lc8/Qs;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 821
    :cond_0
    return-void
.end method
