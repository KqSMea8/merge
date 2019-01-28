.class public Lc8/qUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tUf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatchFlag"
.end annotation


# instance fields
.field isLoaded:Z

.field patch:Lc8/rNc;

.field final synthetic this$0:Lc8/tUf;


# direct methods
.method constructor <init>(Lc8/tUf;Lc8/rNc;Z)V
    .locals 0
    .param p2, "patch"    # Lc8/rNc;
    .param p3, "load"    # Z

    .prologue
    .line 1016
    iput-object p1, p0, Lc8/qUf;->this$0:Lc8/tUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p2, p0, Lc8/qUf;->patch:Lc8/rNc;

    .line 1018
    iput-boolean p3, p0, Lc8/qUf;->isLoaded:Z

    .line 1019
    return-void
.end method
