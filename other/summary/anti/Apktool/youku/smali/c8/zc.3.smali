.class public Lc8/zc;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ac;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ac;


# direct methods
.method constructor <init>(Lc8/Ac;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ac;

    .prologue
    .line 451
    .local p0, "this":Lc8/zc;, "Landroid/support/design/widget/BaseTransientBottomBar$5$1;"
    iput-object p1, p0, Lc8/zc;->this$1:Lc8/Ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    .local p0, "this":Lc8/zc;, "Landroid/support/design/widget/BaseTransientBottomBar$5$1;"
    iget-object v0, p0, Lc8/zc;->this$1:Lc8/Ac;

    iget-object v0, v0, Lc8/Ac;->this$0:Lc8/Nc;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/Nc;->onViewHidden(I)V

    .line 455
    return-void
.end method
