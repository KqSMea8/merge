.class public Lc8/Sao;
.super Ljava/lang/Object;
.source "MediaTypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lc8/Sao;->fileType:I

    .line 68
    iput-object p2, p0, Lc8/Sao;->mimeType:Ljava/lang/String;

    .line 69
    return-void
.end method
