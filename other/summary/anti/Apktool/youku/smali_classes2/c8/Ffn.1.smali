.class public Lc8/Ffn;
.super Ljava/lang/Object;
.source "CredentialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credential"
.end annotation


# instance fields
.field public cookie:Ljava/lang/String;

.field public pspState:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public stoken:Ljava/lang/String;

.field public tokenUpdateAt:Ljava/lang/String;

.field public usingPsp:Z

.field public yktk:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
