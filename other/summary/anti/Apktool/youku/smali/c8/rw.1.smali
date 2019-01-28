.class public Lc8/rw;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zw;


# direct methods
.method constructor <init>(Lc8/zw;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zw;

    .prologue
    .line 1212
    iput-object p1, p0, Lc8/rw;->this$0:Lc8/zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1219
    iget-object v0, p0, Lc8/rw;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->onSubmitQuery()V

    .line 1220
    const/4 v0, 0x1

    return v0
.end method
