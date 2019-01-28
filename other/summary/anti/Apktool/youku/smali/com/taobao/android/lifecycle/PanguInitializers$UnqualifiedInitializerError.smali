.class public Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;
.super Ljava/lang/Error;
.source "PanguInitializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnqualifiedInitializerError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method
