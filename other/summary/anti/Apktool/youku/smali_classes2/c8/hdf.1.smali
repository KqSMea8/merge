.class public Lc8/hdf;
.super Ljava/lang/ThreadLocal;
.source "EventCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lc8/jdf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kdf;


# direct methods
.method constructor <init>(Lc8/kdf;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lc8/hdf;->this$0:Lc8/kdf;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lc8/jdf;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lc8/jdf;

    invoke-direct {v0}, Lc8/jdf;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lc8/hdf;->initialValue()Lc8/jdf;

    move-result-object v0

    return-object v0
.end method
