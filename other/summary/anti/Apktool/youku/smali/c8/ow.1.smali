.class public Lc8/ow;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zw;->addOnLayoutChangeListenerToDropDownAnchorBase()V
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
    .line 418
    iput-object p1, p0, Lc8/ow;->this$0:Lc8/zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lc8/ow;->this$0:Lc8/zw;

    invoke-virtual {v0}, Lc8/zw;->adjustDropDownSizeAndPosition()V

    .line 422
    return-void
.end method
