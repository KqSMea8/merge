.class public Lc8/FA;
.super Ljava/lang/Object;
.source "BundleReleaser.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KA;-><init>(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KA;


# direct methods
.method constructor <init>(Lc8/KA;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KA;

    .prologue
    .line 273
    iput-object p1, p0, Lc8/FA;->this$0:Lc8/KA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lc8/FA;->this$0:Lc8/KA;

    invoke-static {v1, p1}, Lc8/KA;->access$000(Lc8/KA;Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method
