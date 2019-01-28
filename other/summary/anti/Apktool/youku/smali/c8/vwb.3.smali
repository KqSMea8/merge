.class public Lc8/vwb;
.super Lc8/Txb;
.source "PackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Txb",
        "<",
        "Lc8/mwb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 192
    iput-object p1, p0, Lc8/vwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Lc8/Txb;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lc8/mwb;)V
    .locals 0
    .param p1, "data"    # Lc8/mwb;

    .prologue
    .line 195
    return-void
.end method

.method public bridge synthetic end(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 192
    check-cast p1, Lc8/mwb;

    invoke-virtual {p0, p1}, Lc8/vwb;->end(Lc8/mwb;)V

    return-void
.end method
