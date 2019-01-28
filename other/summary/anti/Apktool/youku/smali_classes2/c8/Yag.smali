.class public Lc8/Yag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->decideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/abg;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/abg;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lc8/Yag;->this$0:Lc8/abg;

    iput-object p2, p0, Lc8/Yag;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 653
    iget-object v1, p0, Lc8/Yag;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 654
    .local v0, "currentFocus":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 655
    iget-object v1, p0, Lc8/Yag;->this$0:Lc8/abg;

    invoke-static {v1}, Lc8/abg;->access$1100(Lc8/abg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v1, p0, Lc8/Yag;->this$0:Lc8/abg;

    invoke-virtual {v1}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/peg;

    invoke-virtual {v1}, Lc8/peg;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 657
    :cond_0
    return-void
.end method
