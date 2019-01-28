.class public Lc8/xr;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yr;->initForMode(Lc8/lq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yr;

.field final synthetic val$mode:Lc8/lq;


# direct methods
.method constructor <init>(Lc8/yr;Lc8/lq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yr;

    .prologue
    .line 169
    iput-object p1, p0, Lc8/xr;->this$0:Lc8/yr;

    iput-object p2, p0, Lc8/xr;->val$mode:Lc8/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lc8/xr;->val$mode:Lc8/lq;

    invoke-virtual {v0}, Lc8/lq;->finish()V

    .line 172
    return-void
.end method
