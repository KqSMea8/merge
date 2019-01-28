.class public Lc8/Ez;
.super Ljava/lang/Object;
.source "ServiceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dz;
    }
.end annotation


# static fields
.field public static final BUNDLE_PREPARED:I = 0x1

.field public static final BUNDLE_UNPREPARED:I = -0x1

.field public static final BUNDLE_WAIT:I


# instance fields
.field public mListener:Lc8/Dz;

.field public resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setResultListener(Lc8/Dz;)V
    .locals 0
    .param p1, "listener"    # Lc8/Dz;

    .prologue
    .line 242
    iput-object p1, p0, Lc8/Ez;->mListener:Lc8/Dz;

    .line 243
    return-void
.end method
