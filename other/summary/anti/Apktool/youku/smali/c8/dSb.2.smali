.class public Lc8/dSb;
.super Lc8/qSb;
.source "AdapterExceptionModule.java"


# instance fields
.field public exceptionArg1:Ljava/lang/String;

.field public exceptionArg2:Ljava/lang/String;

.field public exceptionArg3:Ljava/lang/String;

.field public exceptionArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public exceptionCode:Ljava/lang/String;

.field public exceptionDetail:Ljava/lang/String;

.field public exceptionId:Ljava/lang/String;

.field public exceptionVersion:Ljava/lang/String;

.field public thread:Ljava/lang/Thread;

.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/qSb;-><init>()V

    return-void
.end method
