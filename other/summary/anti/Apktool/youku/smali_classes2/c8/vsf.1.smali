.class public Lc8/vsf;
.super Ljava/lang/Object;
.source "TraceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocatorInfo"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field count:I

.field perSize:I

.field threadId:I

.field threadName:I

.field totalSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
