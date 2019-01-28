.class public final Lc8/Zsq;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/btq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/btq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/btq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lc8/btq;

    invoke-direct {v0}, Lc8/btq;-><init>()V

    sput-object v0, Lc8/Zsq;->INSTANCE:Lc8/btq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
