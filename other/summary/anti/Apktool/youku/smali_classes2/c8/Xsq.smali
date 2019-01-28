.class public final Lc8/Xsq;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ysq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Ysq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ysq",
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
    .line 32
    new-instance v0, Lc8/Ysq;

    invoke-direct {v0}, Lc8/Ysq;-><init>()V

    sput-object v0, Lc8/Xsq;->INSTANCE:Lc8/Ysq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
