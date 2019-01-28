.class public Lc8/QH;
.super Ljava/lang/Object;
.source "ImageTool.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/RH;->onFinish(Lc8/ZB;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/RH;


# direct methods
.method constructor <init>(Lc8/RH;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lc8/QH;->this$0:Lc8/RH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 92
    return-void
.end method
