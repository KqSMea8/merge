.class public Lc8/qZb;
.super Ljava/lang/Object;
.source "StandOutWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uZb;->getDropDown(I)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uZb;

.field final synthetic val$dropDown:Landroid/widget/PopupWindow;

.field final synthetic val$item:Lc8/tZb;


# direct methods
.method constructor <init>(Lc8/uZb;Lc8/tZb;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lc8/qZb;->this$0:Lc8/uZb;

    iput-object p2, p0, Lc8/qZb;->val$item:Lc8/tZb;

    iput-object p3, p0, Lc8/qZb;->val$dropDown:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lc8/qZb;->val$item:Lc8/tZb;

    iget-object v0, v0, Lc8/tZb;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 394
    iget-object v0, p0, Lc8/qZb;->val$dropDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 395
    return-void
.end method
