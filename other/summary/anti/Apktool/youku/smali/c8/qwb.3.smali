.class public Lc8/qwb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->removeOneItemFromAvfs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 406
    iput-object p1, p0, Lc8/qwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectRemoveCallback(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "b"    # Z

    .prologue
    .line 410
    return-void
.end method
