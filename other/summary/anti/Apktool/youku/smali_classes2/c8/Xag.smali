.class public Lc8/Xag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->hideSoftKeyboard()V
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
    .line 584
    iput-object p1, p0, Lc8/Xag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lc8/Xag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$1100(Lc8/abg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v0, p0, Lc8/Xag;->this$0:Lc8/abg;

    invoke-virtual {v0}, Lc8/abg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    invoke-virtual {v0}, Lc8/peg;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 588
    return-void
.end method
