.class public final Lc8/Fsq;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HolderDelayErrors"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Jsq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jsq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lc8/Jsq;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lc8/Jsq;-><init>(ZI)V

    sput-object v0, Lc8/Fsq;->INSTANCE:Lc8/Jsq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
