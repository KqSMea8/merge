.class public Lcom/ali/mobisecenhance/ld/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final DirLogRecord:Ljava/lang/String; = "logRecord"

.field public static final FileCrashInfo:Ljava/lang/String; = "CrashInfo"

.field public static final mapData:Ljava/lang/String; = "libreflectmap-dat.so"

.field public static final soName:Ljava/lang/String; = "libreflectmap.so"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
