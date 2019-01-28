.class public Lc8/Wag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->showSoftKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/abg;


# direct methods
.method constructor <init>(Lc8/abg;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lc8/Wag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lc8/Wag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$1100(Lc8/abg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lc8/Wag;->this$0:Lc8/abg;

    invoke-virtual {v1}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 576
    return-void
.end method
