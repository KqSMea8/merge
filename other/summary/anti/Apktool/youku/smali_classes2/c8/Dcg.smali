.class public final Lc8/Dcg;
.super Ljava/lang/Object;
.source "Layouts.java"

# interfaces
.implements Lc8/GYf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ecg;->doLayout(Lc8/tbg;Lc8/AZf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lc8/nVf;


# direct methods
.method constructor <init>(Lc8/nVf;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lc8/Dcg;->val$instance:Lc8/nVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lc8/HYf;)V
    .locals 1
    .param p1, "dom"    # Lc8/HYf;

    .prologue
    .line 123
    iget-object v0, p0, Lc8/Dcg;->val$instance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Dcg;->val$instance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p1}, Lc8/HYf;->hasUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lc8/HYf;->layoutAfter()V

    goto :goto_0
.end method
