.class public Landroid/taobao/atlas/runtime/LowDiskException;
.super Ljava/lang/RuntimeException;
.source "LowDiskException.java"


# static fields
.field public static thredshold:I


# instance fields
.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0x96

    sput v0, Landroid/taobao/atlas/runtime/LowDiskException;->thredshold:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/atlas/runtime/LowDiskException;->throwable:Ljava/lang/Throwable;

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    iput-object p2, p0, Landroid/taobao/atlas/runtime/LowDiskException;->throwable:Ljava/lang/Throwable;

    .line 235
    return-void
.end method


# virtual methods
.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/taobao/atlas/runtime/LowDiskException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
