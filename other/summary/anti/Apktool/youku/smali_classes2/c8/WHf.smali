.class public Lc8/WHf;
.super Ljava/lang/Object;
.source "LogFileUploaderImp.java"

# interfaces
.implements Lc8/qsg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadTask"
.end annotation


# instance fields
.field public bizType:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileType:Ljava/lang/String;

.field public metaInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/XHf;


# direct methods
.method constructor <init>(Lc8/XHf;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/WHf;->this$0:Lc8/XHf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lc8/WHf;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lc8/WHf;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lc8/WHf;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lc8/WHf;->metaInfo:Ljava/util/Map;

    return-object v0
.end method
