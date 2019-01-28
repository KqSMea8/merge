.class public Lc8/HMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lc8/RMn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method constructor <init>(Lc8/KMn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KMn;

    .prologue
    .line 1464
    iput-object p1, p0, Lc8/HMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndPlayAD(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1473
    const/4 v0, 0x0

    return v0
.end method

.method public onStartPlayAD(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1468
    const/4 v0, 0x0

    return v0
.end method
