.class public Lc8/fx;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kx;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kx;


# direct methods
.method constructor <init>(Lc8/kx;)V
    .locals 0
    .param p1, "this$0"    # Lc8/kx;

    .prologue
    .line 1381
    iput-object p1, p0, Lc8/fx;->this$0:Lc8/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1384
    iget-object v0, p0, Lc8/fx;->this$0:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->collapseActionView()V

    .line 1385
    return-void
.end method
