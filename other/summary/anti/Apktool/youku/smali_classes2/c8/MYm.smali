.class public Lc8/MYm;
.super Ljava/lang/Object;
.source "PoplayerActivity.java"

# interfaces
.implements Lc8/xXb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NYm;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/NYm;


# direct methods
.method constructor <init>(Lc8/NYm;)V
    .locals 0
    .param p1, "this$1"    # Lc8/NYm;

    .prologue
    .line 145
    iput-object p1, p0, Lc8/MYm;->this$1:Lc8/NYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForceRemoved(Lc8/yXb;)V
    .locals 0
    .param p1, "popRequest"    # Lc8/yXb;

    .prologue
    .line 159
    return-void
.end method

.method public onReady(Lc8/yXb;)V
    .locals 1
    .param p1, "popRequest"    # Lc8/yXb;

    .prologue
    .line 148
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/uXb;->add(Lc8/yXb;)V

    .line 149
    return-void
.end method

.method public onRecovered(Lc8/yXb;)V
    .locals 0
    .param p1, "popRequest"    # Lc8/yXb;

    .prologue
    .line 154
    return-void
.end method

.method public onSuspended(Lc8/yXb;)V
    .locals 0
    .param p1, "popRequest"    # Lc8/yXb;

    .prologue
    .line 164
    return-void
.end method
