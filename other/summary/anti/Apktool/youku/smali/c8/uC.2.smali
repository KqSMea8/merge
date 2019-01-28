.class public Lc8/uC;
.super Ljava/lang/Object;
.source "TBUploadService.java"

# interfaces
.implements Lc8/qsg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xC;->doMtopUpload(Lc8/GE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xC;

.field final synthetic val$params:Lc8/GE;

.field final synthetic val$tmpFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lc8/xC;Lc8/GE;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lc8/uC;->this$0:Lc8/xC;

    iput-object p2, p0, Lc8/uC;->val$params:Lc8/GE;

    iput-object p3, p0, Lc8/uC;->val$tmpFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lc8/uC;->val$params:Lc8/GE;

    iget-object v0, v0, Lc8/GE;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lc8/uC;->val$tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, ".jpg"

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
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method
