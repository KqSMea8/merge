.class public Lc8/Gt;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kt;->addDetachListenerApi12(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kt;


# direct methods
.method constructor <init>(Lc8/Kt;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Kt;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/Gt;->this$0:Lc8/Kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/Gt;->this$0:Lc8/Kt;

    invoke-static {v0}, Lc8/Kt;->access$000(Lc8/Kt;)V

    .line 100
    return-void
.end method
