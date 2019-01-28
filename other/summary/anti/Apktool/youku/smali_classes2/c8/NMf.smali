.class public Lc8/NMf;
.super Ljava/lang/Object;
.source "RemoteAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OMf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field static instance:Lc8/OMf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lc8/OMf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/OMf;-><init>(Lc8/MMf;)V

    sput-object v0, Lc8/NMf;->instance:Lc8/OMf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
