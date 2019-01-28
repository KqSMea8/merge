.class public Lc8/ado;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadListener"
.end annotation


# instance fields
.field private mWrapper:Lc8/bdo;


# direct methods
.method public constructor <init>(Lc8/bdo;)V
    .locals 0
    .param p1, "wrapper"    # Lc8/bdo;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lc8/ado;->mWrapper:Lc8/bdo;

    .line 262
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 267
    iget-object v0, p0, Lc8/ado;->mWrapper:Lc8/bdo;

    invoke-virtual {v0}, Lc8/bdo;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lc8/Zco;->shouldDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 269
    return-void
.end method
