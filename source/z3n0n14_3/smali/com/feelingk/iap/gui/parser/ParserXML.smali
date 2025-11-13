.class public Lcom/feelingk/iap/gui/parser/ParserXML;
.super Landroid/app/Activity;
.source "ParserXML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;,
        Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ParserXML"


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field private XML_FILE_NAME:Ljava/lang/String;

.field private XML_FILE_PATH:Ljava/lang/String;

.field private XML_FILE_PATH_KTLG:Ljava/lang/String;

.field autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

.field cancelAuthBtn:Landroid/view/View$OnClickListener;

.field cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

.field cancelBtn:Landroid/view/View$OnClickListener;

.field cancelJoinBtn:Landroid/view/View$OnClickListener;

.field cancelYesNoBtn:Landroid/view/View$OnClickListener;

.field changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private context:Landroid/content/Context;

.field private idg:I

.field private ids:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field imageBtn:Landroid/view/View$OnClickListener;

.field private layoutStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mAfterAutoPurchaseInfoAgree:Z

.field private mAutoPurchaseFormPopupMode:Z

.field private mFormName:Ljava/lang/String;

.field private mImageConfirmPopupMode:Z

.field private mInfoMessage:Ljava/lang/String;

.field private mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

.field private mJoinCheckList:[Z

.field private mJoinPopupMode:Z

.field private mJuminPopupMode:Z

.field private mKORCarrier:I

.field private mPopupClickListener:Landroid/view/View$OnClickListener;

.field private mPurchaseCheckList:[Z

.field private mYesNoPopupMode:Z

.field private m_AccountPriceTextView:Landroid/widget/TextView;

.field private m_JuminText1:Landroid/widget/EditText;

.field private m_JuminText2:Landroid/widget/EditText;

.field moreInfo:Landroid/view/View$OnClickListener;

.field moreInfoFormBtn1:Landroid/view/View$OnClickListener;

.field moreInfoFormBtn2:Landroid/view/View$OnClickListener;

.field moreInfoFormBtn3:Landroid/view/View$OnClickListener;

.field okAuthBtn:Landroid/view/View$OnClickListener;

.field okBtn:Landroid/view/View$OnClickListener;

.field okJoinBtn:Landroid/view/View$OnClickListener;

.field okMessageBtn:Landroid/view/View$OnClickListener;

.field okYesNoBtn:Landroid/view/View$OnClickListener;

.field private onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

.field private onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

.field private onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

.field private onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

.field private onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

.field private onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

.field private orientation:I

.field private tStoreFlag:Z

.field tStoreInfoBtn:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 68
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 71
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 72
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 75
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 77
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 81
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 87
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 89
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 90
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 92
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 95
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 100
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 104
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 2397
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 2413
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 2421
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2432
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 2448
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2459
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2469
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2533
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 2540
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 2548
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 2571
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 2599
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 2617
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 2624
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 183
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 184
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 185
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;
    .param p3, "bJuminPopupMode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 68
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 71
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 72
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 75
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 77
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 81
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 87
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 89
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 90
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 92
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 95
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 100
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 104
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 2397
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 2413
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 2421
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2432
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 2448
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2459
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2469
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2533
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 2540
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 2548
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 2571
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 2599
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 2617
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 2624
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 189
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 190
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 191
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 192
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 193
    iput-boolean p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;
    .param p3, "isTelecomCarrier"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "checkFlag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 68
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 71
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 72
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 75
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 77
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 81
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 87
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 89
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 90
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 92
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 95
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 100
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 104
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 2397
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 2413
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 2421
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2432
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 2448
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2459
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2469
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2533
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 2540
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 2548
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 2571
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 2599
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 2617
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 2624
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 157
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 158
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 159
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 160
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 161
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 163
    const-string v0, "AutoPurchaseForm"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 166
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;
    .param p3, "isTelecomCarrier"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "checkFlag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 68
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 71
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 72
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 75
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 77
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 81
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 87
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 89
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 90
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 92
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 95
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 100
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 104
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 2397
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 2413
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 2421
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2432
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 2448
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2459
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2469
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2533
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 2540
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 2548
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 2571
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 2599
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 2617
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 2624
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 140
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 141
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 143
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 144
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 146
    const-string v0, "PermissionPopup"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 151
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    .param p3, "isTelecomCarrier"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "checkFlag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 68
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 71
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 72
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 75
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 77
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 81
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 87
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 89
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 90
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 92
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 95
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 100
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 104
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 2397
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 2413
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 2421
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2432
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 2448
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2459
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2469
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2533
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 2540
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 2548
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 2571
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 2599
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 2617
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 2624
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 172
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 173
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 174
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 175
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 176
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 178
    const-string v0, "Join"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 181
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    .line 200
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .param p3, "isTelecomCarrier"    # I
    .param p4, "isDeviceTab"    # Z

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    .line 205
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 207
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZZ)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .param p3, "isTelecomCarrier"    # I
    .param p4, "isDeviceTab"    # Z
    .param p5, "bJuminPopupMode"    # Z

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    .line 212
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 214
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 215
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    .param p3, "isTelecomCarrier"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "checkFlag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 63
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 68
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 69
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 70
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 71
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 72
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 75
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 77
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/xml"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "/xml_kt_lg"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    .line 81
    const-string v0, "purchase"

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 86
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 87
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 89
    iput v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 90
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    .line 92
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    .line 95
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    .line 96
    iput-boolean v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    .line 100
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    .line 104
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 106
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    .line 109
    iput-boolean v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    .line 2397
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    .line 2413
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$2;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    .line 2421
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$3;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2432
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$4;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    .line 2440
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$5;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    .line 2448
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$6;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2459
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$7;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    .line 2469
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$8;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2533
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$9;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    .line 2540
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$10;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    .line 2548
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$11;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$12;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    .line 2571
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$13;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    .line 2580
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$14;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    .line 2599
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$15;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    .line 2610
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$16;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 2617
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$17;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    .line 2624
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/parser/ParserXML$18;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    .line 124
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 125
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 126
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 127
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 128
    iput p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    .line 130
    const-string v0, "YesNo"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-boolean p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    .line 134
    :cond_0
    return-void
.end method

.method private Start(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "xmlFileFname"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v3, 0x0

    .line 320
    .local v3, "parse":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 321
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 324
    .local v2, "is":Ljava/io/InputStream;
    const-string v5, "utf-8"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 326
    const/4 v4, 0x0

    .line 328
    .local v4, "parsingView":Landroid/view/View;
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJuminPopupMode:Z

    if-eqz v5, :cond_0

    .line 329
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    .line 356
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "parsingView":Landroid/view/View;
    :goto_0
    return-object v4

    .line 330
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "parsingView":Landroid/view/View;
    :cond_0
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mYesNoPopupMode:Z

    if-eqz v5, :cond_1

    .line 331
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 333
    :cond_1
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mImageConfirmPopupMode:Z

    if-eqz v5, :cond_2

    .line 335
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 337
    :cond_2
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAutoPurchaseFormPopupMode:Z

    if-eqz v5, :cond_3

    .line 339
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 341
    :cond_3
    iget-boolean v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinPopupMode:Z

    if-eqz v5, :cond_4

    .line 343
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflateJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 346
    :cond_4
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 350
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "parsingView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 356
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private UseTCash(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 2635
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2637
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v3, v3, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v4, v4, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    sub-int v2, v3, v4

    .line 2639
    .local v2, "total":I
    if-lez v2, :cond_0

    .line 2640
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2641
    .local v0, "df":Ljava/text/DecimalFormat;
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 2643
    .local v1, "dfMoney":Ljava/lang/String;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2658
    .end local v2    # "total":I
    :goto_0
    return-void

    .line 2646
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v1    # "dfMoney":Ljava/lang/String;
    .restart local v2    # "total":I
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2647
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v3, v3, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 2650
    .restart local v1    # "dfMoney":Ljava/lang/String;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "P=0\uc6d0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2654
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v1    # "dfMoney":Ljava/lang/String;
    .end local v2    # "total":I
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2655
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget v3, v3, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 2656
    .restart local v1    # "dfMoney":Ljava/lang/String;
    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\uc6d0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    return-object v0
.end method

.method static synthetic access$11(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    return-object v0
.end method

.method static synthetic access$12(Lcom/feelingk/iap/gui/parser/ParserXML;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    return v0
.end method

.method static synthetic access$13(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mAfterAutoPurchaseInfoAgree:Z

    return-void
.end method

.method static synthetic access$14(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z

    return-void
.end method

.method static synthetic access$15(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    return-object v0
.end method

.method static synthetic access$16(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    return-void
.end method

.method static synthetic access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$18(Lcom/feelingk/iap/gui/parser/ParserXML;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 2633
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->UseTCash(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAuthResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    return v0
.end method

.method static synthetic access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    return-object v0
.end method

.method static synthetic access$9(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    return-object v0
.end method

.method private createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 68
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 428
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 429
    .local v42, "name":Ljava/lang/String;
    const/16 v54, 0x0

    .line 430
    .local v54, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 433
    .local v12, "atts":Landroid/util/AttributeSet;
    const-string v65, "LinearLayout"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_1

    .line 434
    new-instance v54, Landroid/widget/LinearLayout;

    .end local v54    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 463
    .restart local v54    # "result":Landroid/view/View;
    :goto_0
    if-nez v54, :cond_7

    .line 464
    const/16 v54, 0x0

    .line 904
    .end local v54    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v54

    .line 441
    .restart local v54    # "result":Landroid/view/View;
    :cond_1
    const-string v65, "TextView"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2

    .line 442
    new-instance v54, Landroid/widget/TextView;

    .end local v54    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v54    # "result":Landroid/view/View;
    goto :goto_0

    .line 444
    :cond_2
    const-string v65, "ImageView"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_3

    .line 445
    new-instance v54, Landroid/widget/ImageView;

    .end local v54    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v54    # "result":Landroid/view/View;
    goto :goto_0

    .line 447
    :cond_3
    const-string v65, "Button"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_4

    .line 448
    new-instance v54, Landroid/widget/Button;

    .end local v54    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v54    # "result":Landroid/view/View;
    goto :goto_0

    .line 450
    :cond_4
    const-string v65, "ScrollView"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_5

    .line 451
    new-instance v54, Landroid/widget/ScrollView;

    .end local v54    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .restart local v54    # "result":Landroid/view/View;
    goto :goto_0

    .line 453
    :cond_5
    const-string v65, "CheckBox"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_6

    .line 454
    new-instance v54, Landroid/widget/CheckBox;

    .end local v54    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v54    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 460
    :cond_6
    new-instance v65, Ljava/lang/StringBuilder;

    const-string v66, "# UnSupported tag:"

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v65

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :cond_7
    move-object/from16 v0, v54

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v65, v0

    if-eqz v65, :cond_12

    move-object/from16 v38, v54

    .line 477
    check-cast v38, Landroid/widget/LinearLayout;

    .line 478
    .local v38, "ll":Landroid/widget/LinearLayout;
    const-string v65, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 480
    .local v46, "orient":Ljava/lang/String;
    if-eqz v46, :cond_8

    .line 481
    const-string v65, "horizontal"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_1f

    .line 482
    const/16 v65, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 488
    :cond_8
    :goto_2
    const-string v65, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 489
    .local v30, "image":Ljava/lang/String;
    if-eqz v30, :cond_9

    .line 490
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v34

    .line 491
    .local v34, "is":Ljava/io/InputStream;
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v65

    move-object/from16 v0, v38

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    .end local v34    # "is":Ljava/io/InputStream;
    :cond_9
    const-string v65, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 496
    .local v31, "imageColor":Ljava/lang/String;
    if-eqz v31, :cond_a

    .line 499
    const/high16 v65, -0x10000

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 503
    :cond_a
    const-string v65, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 504
    .local v27, "gravity":Ljava/lang/String;
    if-eqz v27, :cond_b

    .line 505
    const-string v65, "center"

    move-object/from16 v0, v27

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_20

    .line 506
    const/16 v65, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 514
    :cond_b
    :goto_3
    const-string v65, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 515
    .local v48, "padding":Ljava/lang/String;
    if-eqz v48, :cond_c

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v55

    .line 517
    .local v55, "size":I
    move-object/from16 v0, v38

    move/from16 v1, v55

    move/from16 v2, v55

    move/from16 v3, v55

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 521
    .end local v55    # "size":I
    :cond_c
    const-string v65, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 522
    .local v63, "touchMode":Ljava/lang/String;
    if-eqz v63, :cond_d

    .line 523
    const/16 v65, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 527
    :cond_d
    const-string v65, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 528
    .local v52, "paddingTop":Ljava/lang/String;
    const-string v65, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 529
    .local v49, "paddingBom":Ljava/lang/String;
    const-string v65, "a:paddingLeft"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 530
    .local v50, "paddingLeft":Ljava/lang/String;
    const-string v65, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 532
    .local v51, "paddingRight":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "TTop":I
    const/4 v6, 0x0

    .local v6, "TBom":I
    const/4 v7, 0x0

    .local v7, "TLeft":I
    const/4 v8, 0x0

    .line 534
    .local v8, "TRight":I
    if-eqz v52, :cond_e

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v9

    .line 536
    :cond_e
    if-eqz v49, :cond_f

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v6

    .line 538
    :cond_f
    if-eqz v50, :cond_10

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v7

    .line 540
    :cond_10
    if-eqz v51, :cond_11

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v8

    .line 543
    :cond_11
    move-object/from16 v0, v38

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 546
    .end local v6    # "TBom":I
    .end local v7    # "TLeft":I
    .end local v8    # "TRight":I
    .end local v9    # "TTop":I
    .end local v27    # "gravity":Ljava/lang/String;
    .end local v30    # "image":Ljava/lang/String;
    .end local v31    # "imageColor":Ljava/lang/String;
    .end local v38    # "ll":Landroid/widget/LinearLayout;
    .end local v46    # "orient":Ljava/lang/String;
    .end local v48    # "padding":Ljava/lang/String;
    .end local v49    # "paddingBom":Ljava/lang/String;
    .end local v50    # "paddingLeft":Ljava/lang/String;
    .end local v51    # "paddingRight":Ljava/lang/String;
    .end local v52    # "paddingTop":Ljava/lang/String;
    .end local v63    # "touchMode":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v54

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v65, v0

    if-eqz v65, :cond_13

    move-object/from16 v37, v54

    .line 548
    check-cast v37, Landroid/widget/ImageView;

    .line 550
    .local v37, "iv":Landroid/widget/ImageView;
    const-string v65, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 551
    .restart local v30    # "image":Ljava/lang/String;
    if-eqz v30, :cond_13

    .line 552
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v34

    .line 553
    .restart local v34    # "is":Ljava/io/InputStream;
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v65

    move-object/from16 v0, v37

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    .end local v30    # "image":Ljava/lang/String;
    .end local v34    # "is":Ljava/io/InputStream;
    .end local v37    # "iv":Landroid/widget/ImageView;
    :cond_13
    move-object/from16 v0, v54

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v65, v0

    if-eqz v65, :cond_1c

    move-object/from16 v64, v54

    .line 559
    check-cast v64, Landroid/widget/TextView;

    .line 561
    .local v64, "tv":Landroid/widget/TextView;
    const-string v65, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 562
    .local v60, "textID":Ljava/lang/String;
    const-string v65, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 563
    .local v57, "text":Ljava/lang/String;
    const-string v65, "a:infotext"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 564
    .local v33, "infotext":Ljava/lang/String;
    const-string v65, "a:textcontent"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 565
    .local v62, "textcontent":Ljava/lang/String;
    const-string v65, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 566
    .local v61, "textSize":Ljava/lang/String;
    const-string v65, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 567
    .local v58, "textColor":Ljava/lang/String;
    const-string v65, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 570
    .local v59, "textGravity":Ljava/lang/String;
    const/16 v22, 0x0

    .line 573
    .local v22, "converItemName":Ljava/lang/String;
    if-eqz v57, :cond_14

    .line 574
    const-string v65, "\\n"

    const-string v66, "\n"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v57

    .line 575
    move-object/from16 v0, v64

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_14
    if-eqz v33, :cond_17

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    .line 582
    .local v53, "pm":Landroid/content/pm/PackageManager;
    const/16 v65, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 583
    .local v11, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 584
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v41

    .line 585
    .local v41, "nSize":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v41

    if-lt v0, v1, :cond_22

    .line 594
    sget-object v40, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 595
    .local v40, "modelName":Ljava/lang/String;
    const-string v65, "modelName: "

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-static/range {v65 .. v66}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/16 v26, 0x1

    .line 597
    .local v26, "enableSetText":Z
    const-string v65, "SHW-M380S"

    move-object/from16 v0, v40

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_15

    const-string v65, "SHW-M380SSO"

    move-object/from16 v0, v40

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v65

    if-nez v65, :cond_15

    const-string v65, "MZ601"

    move-object/from16 v0, v40

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_16

    .line 598
    :cond_15
    const/16 v26, 0x0

    .line 601
    :cond_16
    if-eqz v26, :cond_17

    .line 602
    const-string v65, "* \uc0c1\ud488 \uacb0\uc81c \uc2dc <a href = \"tstore://SETTING_VIEW\">T store \uc7a0\uae08\uc124\uc815</a>\uc744 \ud1b5\ud55c \ubcf8\uc778 \uc778\uc99d \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4"

    invoke-static/range {v65 .. v65}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreInfoBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v26    # "enableSetText":Z
    .end local v28    # "i":I
    .end local v40    # "modelName":Ljava/lang/String;
    .end local v41    # "nSize":I
    .end local v53    # "pm":Landroid/content/pm/PackageManager;
    :cond_17
    if-eqz v62, :cond_18

    .line 614
    const-string v65, "\\n"

    const-string v66, "\n"

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v62

    .line 615
    const-string v65, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,"

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :cond_18
    if-eqz v61, :cond_19

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setTextSize(F)V

    .line 619
    :cond_19
    if-eqz v58, :cond_1a

    .line 620
    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setTextColor(I)V

    .line 621
    :cond_1a
    if-eqz v60, :cond_1b

    .line 623
    const-string v65, "ItemName"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_25

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 625
    .local v36, "itemName":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v65

    const/16 v66, 0xa

    move/from16 v0, v65

    move/from16 v1, v66

    if-le v0, v1, :cond_24

    .line 626
    const/16 v65, 0x0

    const/16 v66, 0xa

    move-object/from16 v0, v36

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 627
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "..."

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 628
    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .end local v36    # "itemName":Ljava/lang/String;
    :cond_1b
    :goto_5
    if-eqz v59, :cond_2e

    .line 665
    const/16 v65, 0x11

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setGravity(I)V

    .line 668
    :goto_6
    const/16 v65, 0x0

    const v66, 0x3f933333    # 1.15f

    invoke-virtual/range {v64 .. v66}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 672
    .end local v22    # "converItemName":Ljava/lang/String;
    .end local v33    # "infotext":Ljava/lang/String;
    .end local v57    # "text":Ljava/lang/String;
    .end local v58    # "textColor":Ljava/lang/String;
    .end local v59    # "textGravity":Ljava/lang/String;
    .end local v60    # "textID":Ljava/lang/String;
    .end local v61    # "textSize":Ljava/lang/String;
    .end local v62    # "textcontent":Ljava/lang/String;
    .end local v64    # "tv":Landroid/widget/TextView;
    :cond_1c
    move-object/from16 v0, v54

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v65, v0

    if-eqz v65, :cond_1d

    move-object/from16 v32, v54

    .line 674
    check-cast v32, Landroid/widget/ImageView;

    .line 675
    .local v32, "imageview":Landroid/widget/ImageView;
    const-string v65, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 676
    .restart local v30    # "image":Ljava/lang/String;
    if-eqz v30, :cond_1d

    .line 677
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v34

    .line 678
    .restart local v34    # "is":Ljava/io/InputStream;
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    .line 679
    .local v39, "mDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    .end local v30    # "image":Ljava/lang/String;
    .end local v32    # "imageview":Landroid/widget/ImageView;
    .end local v34    # "is":Ljava/io/InputStream;
    .end local v39    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1d
    move-object/from16 v0, v54

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v65, v0

    if-eqz v65, :cond_1e

    .line 688
    const-string v65, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 689
    .local v43, "offimage":Ljava/lang/String;
    const-string v65, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 691
    .local v45, "onimage":Ljava/lang/String;
    if-eqz v43, :cond_32

    move-object/from16 v18, v54

    .line 692
    check-cast v18, Landroid/widget/Button;

    .line 695
    .local v18, "btn":Landroid/widget/Button;
    const/16 v16, 0x0

    .local v16, "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 697
    .local v17, "btOver":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 698
    .local v35, "isStream":Ljava/io/InputStream;
    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 700
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 701
    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 703
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 704
    .local v24, "drawables":Landroid/graphics/drawable/StateListDrawable;
    const v56, 0x10100a7

    .line 705
    .local v56, "statePressed":I
    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput v56, v65, v66

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 706
    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 707
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    const-string v65, "btn_buy_sel_h"

    move-object/from16 v0, v45

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2f

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    .end local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v17    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v18    # "btn":Landroid/widget/Button;
    .end local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v35    # "isStream":Ljava/io/InputStream;
    .end local v43    # "offimage":Ljava/lang/String;
    .end local v45    # "onimage":Ljava/lang/String;
    .end local v56    # "statePressed":I
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/Stack;->size()I

    move-result v65

    if-lez v65, :cond_0

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v65

    move-object/from16 v0, v54

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 483
    .restart local v38    # "ll":Landroid/widget/LinearLayout;
    .restart local v46    # "orient":Ljava/lang/String;
    :cond_1f
    const-string v65, "vertical"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_8

    .line 484
    const/16 v65, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 507
    .restart local v27    # "gravity":Ljava/lang/String;
    .restart local v30    # "image":Ljava/lang/String;
    .restart local v31    # "imageColor":Ljava/lang/String;
    :cond_20
    const-string v65, "left"

    move-object/from16 v0, v27

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_21

    .line 508
    const/16 v65, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 510
    :cond_21
    const/16 v65, 0x5

    move-object/from16 v0, v38

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 586
    .end local v27    # "gravity":Ljava/lang/String;
    .end local v30    # "image":Ljava/lang/String;
    .end local v31    # "imageColor":Ljava/lang/String;
    .end local v38    # "ll":Landroid/widget/LinearLayout;
    .end local v46    # "orient":Ljava/lang/String;
    .restart local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v22    # "converItemName":Ljava/lang/String;
    .restart local v28    # "i":I
    .restart local v33    # "infotext":Ljava/lang/String;
    .restart local v41    # "nSize":I
    .restart local v53    # "pm":Landroid/content/pm/PackageManager;
    .restart local v57    # "text":Ljava/lang/String;
    .restart local v58    # "textColor":Ljava/lang/String;
    .restart local v59    # "textGravity":Ljava/lang/String;
    .restart local v60    # "textID":Ljava/lang/String;
    .restart local v61    # "textSize":Ljava/lang/String;
    .restart local v62    # "textcontent":Ljava/lang/String;
    .restart local v64    # "tv":Landroid/widget/TextView;
    :cond_22
    move/from16 v0, v28

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 587
    .restart local v10    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v65, v0

    const-string v66, "com.skt.skaf.A000Z00040"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v65

    if-nez v65, :cond_23

    .line 588
    const/16 v65, 0x1

    move/from16 v0, v65

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z

    .line 585
    :cond_23
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 631
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v28    # "i":I
    .end local v41    # "nSize":I
    .end local v53    # "pm":Landroid/content/pm/PackageManager;
    .restart local v36    # "itemName":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, v64

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 633
    .end local v36    # "itemName":Ljava/lang/String;
    :cond_25
    const-string v65, "ItemUseDate"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_26

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemUseDate:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 635
    :cond_26
    const-string v65, "ItemPrice"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_27

    .line 636
    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    move/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "\uc6d0"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 637
    :cond_27
    const-string v65, "ItemCash"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_28

    .line 638
    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    move/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "P"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 639
    :cond_28
    const-string v65, "commonMessage"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_29

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 641
    :cond_29
    const-string v65, "Version"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2b

    .line 642
    const-string v65, "iapdev.tstore.co.kr"

    const-string v66, "iapdev.tstore.co.kr"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2a

    .line 643
    const-string v65, "V 11.11.28(\uac1c\ubc1c)"

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 645
    :cond_2a
    const-string v65, "V 11.11.28"

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 647
    :cond_2b
    const-string v65, "HeaderMessage"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_2c

    const-string v65, "FooterMessage"

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2d

    .line 648
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->FinalVersionCheck:Z

    move/from16 v65, v0

    if-eqz v65, :cond_1b

    .line 649
    const/16 v54, 0x0

    goto/16 :goto_1

    .line 656
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    move/from16 v65, v0

    if-nez v65, :cond_1b

    .line 657
    move-object/from16 v0, v64

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/gui/parser/ParserXML;->m_AccountPriceTextView:Landroid/widget/TextView;

    .line 658
    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPurchasePrice:I

    move/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "\uc6d0"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 667
    :cond_2e
    const/16 v65, 0x13

    invoke-virtual/range {v64 .. v65}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_6

    .line 712
    .end local v22    # "converItemName":Ljava/lang/String;
    .end local v33    # "infotext":Ljava/lang/String;
    .end local v57    # "text":Ljava/lang/String;
    .end local v58    # "textColor":Ljava/lang/String;
    .end local v59    # "textGravity":Ljava/lang/String;
    .end local v60    # "textID":Ljava/lang/String;
    .end local v61    # "textSize":Ljava/lang/String;
    .end local v62    # "textcontent":Ljava/lang/String;
    .end local v64    # "tv":Landroid/widget/TextView;
    .restart local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "btOver":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "btn":Landroid/widget/Button;
    .restart local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .restart local v35    # "isStream":Ljava/io/InputStream;
    .restart local v43    # "offimage":Ljava/lang/String;
    .restart local v45    # "onimage":Ljava/lang/String;
    .restart local v56    # "statePressed":I
    :cond_2f
    const-string v65, "pop_btn_sel_ok"

    move-object/from16 v0, v45

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_30

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okMessageBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 714
    :cond_30
    const-string v65, "btn_info01_sel"

    move-object/from16 v0, v45

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_31

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfo:Landroid/view/View$OnClickListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 717
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 721
    .end local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v17    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v18    # "btn":Landroid/widget/Button;
    .end local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v35    # "isStream":Ljava/io/InputStream;
    .end local v56    # "statePressed":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    move/from16 v65, v0

    if-nez v65, :cond_34

    move-object/from16 v21, v54

    .line 722
    check-cast v21, Landroid/widget/CheckBox;

    .line 724
    .local v21, "checkbtn":Landroid/widget/CheckBox;
    const-string v19, "btn_check_ok_nor"

    .line 725
    .local v19, "checkImage":Ljava/lang/String;
    const-string v20, "btn_check_ok_sel"

    .line 726
    .local v20, "checkPImage":Ljava/lang/String;
    const-string v47, "btn_check_no_sel"

    .line 727
    .local v47, "overImage":Ljava/lang/String;
    const-string v23, "btn_check_dim"

    .line 730
    .local v23, "dimImage":Ljava/lang/String;
    const/16 v16, 0x0

    .restart local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .restart local v17    # "btOver":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .local v13, "btCheck":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .local v14, "btCheckP":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 732
    .local v15, "btDis":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 733
    .local v44, "onStream":Ljava/io/InputStream;
    invoke-static/range {v44 .. v45}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 736
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 737
    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 740
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 741
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 744
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 745
    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 748
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 749
    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 751
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 752
    .restart local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    new-instance v25, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 754
    .local v25, "drawables2":Landroid/graphics/drawable/StateListDrawable;
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_0

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 755
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 756
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_2

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 757
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_3

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 758
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_4

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 760
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_5

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 761
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_6

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 762
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_7

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 763
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_8

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 764
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_9

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 766
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    const/16 v65, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    move/from16 v65, v0

    if-eqz v65, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    move/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    move/from16 v66, v0

    sub-int v65, v65, v66

    if-ltz v65, :cond_33

    .line 773
    const/16 v65, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 777
    :goto_8
    new-instance v65, Lcom/feelingk/iap/gui/parser/ParserXML$19;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$19;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_7

    .line 775
    :cond_33
    const/16 v65, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_8

    .line 786
    .end local v13    # "btCheck":Landroid/graphics/drawable/Drawable;
    .end local v14    # "btCheckP":Landroid/graphics/drawable/Drawable;
    .end local v15    # "btDis":Landroid/graphics/drawable/Drawable;
    .end local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v17    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v19    # "checkImage":Ljava/lang/String;
    .end local v20    # "checkPImage":Ljava/lang/String;
    .end local v21    # "checkbtn":Landroid/widget/CheckBox;
    .end local v23    # "dimImage":Ljava/lang/String;
    .end local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v25    # "drawables2":Landroid/graphics/drawable/StateListDrawable;
    .end local v44    # "onStream":Ljava/io/InputStream;
    .end local v47    # "overImage":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    move/from16 v65, v0

    if-eqz v65, :cond_1e

    .line 787
    move-object/from16 v0, v54

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v65, v0

    if-eqz v65, :cond_1e

    .line 788
    const/4 v5, 0x0

    .line 789
    .local v5, "Checkonimage":Ljava/lang/String;
    const-string v65, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v12, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "id":Ljava/lang/String;
    move-object/from16 v21, v54

    .line 791
    check-cast v21, Landroid/widget/CheckBox;

    .line 793
    .restart local v21    # "checkbtn":Landroid/widget/CheckBox;
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 794
    const/16 v19, 0x0

    .line 798
    .restart local v19    # "checkImage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    move/from16 v65, v0

    if-eqz v65, :cond_36

    .line 799
    const-string v5, "checkbox_y"

    .line 800
    const-string v19, "checkbox_n"

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPurchaseCheckList:[Z

    move-object/from16 v65, v0

    const/16 v66, 0x0

    const/16 v67, 0x1

    aput-boolean v67, v65, v66

    .line 812
    :cond_35
    :goto_9
    const/16 v16, 0x0

    .restart local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 824
    .restart local v13    # "btCheck":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 825
    .restart local v44    # "onStream":Ljava/io/InputStream;
    move-object/from16 v0, v44

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 828
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v67

    invoke-direct/range {v66 .. v67}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string v67, ".png"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v44

    .line 829
    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 831
    new-instance v24, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 832
    .restart local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    new-instance v25, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 834
    .restart local v25    # "drawables2":Landroid/graphics/drawable/StateListDrawable;
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_a

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 835
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_b

    move-object/from16 v0, v24

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 837
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_c

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 838
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_d

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 839
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_e

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 840
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_f

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 841
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_10

    const/16 v66, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 843
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 846
    const/16 v65, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_7

    .line 804
    .end local v13    # "btCheck":Landroid/graphics/drawable/Drawable;
    .end local v16    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v24    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v25    # "drawables2":Landroid/graphics/drawable/StateListDrawable;
    .end local v44    # "onStream":Ljava/io/InputStream;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    move/from16 v65, v0

    if-nez v65, :cond_35

    .line 805
    const-string v5, "checkbox_n"

    .line 806
    const-string v19, "checkbox_y"

    goto/16 :goto_9

    .line 754
    :array_0
    .array-data 4
        -0x101009e
        -0x101009c
    .end array-data

    .line 755
    :array_1
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data

    .line 756
    :array_2
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    .line 757
    :array_3
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 758
    :array_4
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data

    .line 760
    :array_5
    .array-data 4
        -0x101009e
        -0x101009c
    .end array-data

    .line 761
    :array_6
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data

    .line 762
    :array_7
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    .line 763
    :array_8
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 764
    :array_9
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data

    .line 834
    :array_a
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 835
    :array_b
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data

    .line 837
    :array_c
    .array-data 4
        -0x101009e
        -0x101009c
    .end array-data

    .line 838
    :array_d
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data

    .line 839
    :array_e
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    .line 840
    :array_f
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 841
    :array_10
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data
.end method

.method private createViewAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 40
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1162
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1163
    .local v20, "name":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1164
    .local v27, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 1166
    .local v5, "atts":Landroid/util/AttributeSet;
    const-string v37, "LinearLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1167
    new-instance v27, Landroid/widget/LinearLayout;

    .end local v27    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1182
    .restart local v27    # "result":Landroid/view/View;
    :goto_0
    if-nez v27, :cond_5

    .line 1183
    const/16 v27, 0x0

    .line 1332
    .end local v27    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v27

    .line 1169
    .restart local v27    # "result":Landroid/view/View;
    :cond_1
    const-string v37, "TextView"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1170
    new-instance v27, Landroid/widget/TextView;

    .end local v27    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v27    # "result":Landroid/view/View;
    goto :goto_0

    .line 1172
    :cond_2
    const-string v37, "Button"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 1173
    new-instance v27, Landroid/widget/Button;

    .end local v27    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v27    # "result":Landroid/view/View;
    goto :goto_0

    .line 1175
    :cond_3
    const-string v37, "EditText"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1176
    new-instance v27, Landroid/widget/EditText;

    .end local v27    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .restart local v27    # "result":Landroid/view/View;
    goto :goto_0

    .line 1179
    :cond_4
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "# UnSupported tag:"

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_5
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v37, v0

    if-eqz v37, :cond_b

    move-object/from16 v18, v27

    .line 1186
    check-cast v18, Landroid/widget/LinearLayout;

    .line 1187
    .local v18, "ll":Landroid/widget/LinearLayout;
    const-string v37, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1189
    .local v23, "orient":Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 1190
    const-string v37, "horizontal"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 1191
    const/16 v37, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1197
    :cond_6
    :goto_2
    const-string v37, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1198
    .local v14, "image":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 1199
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ".png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 1200
    .local v16, "is":Ljava/io/InputStream;
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    .end local v16    # "is":Ljava/io/InputStream;
    :cond_7
    const-string v37, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1205
    .local v15, "imageColor":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 1208
    const/high16 v37, -0x10000

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1212
    :cond_8
    const-string v37, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1213
    .local v12, "gravity":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 1214
    const-string v37, "center"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    .line 1215
    const/16 v37, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1221
    :cond_9
    :goto_3
    const-string v37, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1222
    .local v24, "padding":Ljava/lang/String;
    if-eqz v24, :cond_a

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v28

    .line 1224
    .local v28, "size":I
    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v28

    move/from16 v3, v28

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1228
    .end local v28    # "size":I
    :cond_a
    const-string v37, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1229
    .local v35, "touchMode":Ljava/lang/String;
    if-eqz v35, :cond_b

    .line 1230
    const/16 v37, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1236
    .end local v12    # "gravity":Ljava/lang/String;
    .end local v14    # "image":Ljava/lang/String;
    .end local v15    # "imageColor":Ljava/lang/String;
    .end local v18    # "ll":Landroid/widget/LinearLayout;
    .end local v23    # "orient":Ljava/lang/String;
    .end local v24    # "padding":Ljava/lang/String;
    .end local v35    # "touchMode":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v37, v0

    if-eqz v37, :cond_10

    move-object/from16 v36, v27

    .line 1237
    check-cast v36, Landroid/widget/TextView;

    .line 1239
    .local v36, "tv":Landroid/widget/TextView;
    const-string v37, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1240
    .local v33, "textID":Ljava/lang/String;
    const-string v37, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1241
    .local v30, "text":Ljava/lang/String;
    const-string v37, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1242
    .local v34, "textSize":Ljava/lang/String;
    const-string v37, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1243
    .local v31, "textColor":Ljava/lang/String;
    const-string v37, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1245
    .local v32, "textGravity":Ljava/lang/String;
    if-eqz v30, :cond_c

    .line 1246
    const-string v37, "\\n"

    const-string v38, "\n"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 1247
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    :cond_c
    if-eqz v34, :cond_d

    .line 1250
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1251
    :cond_d
    if-eqz v31, :cond_e

    .line 1252
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1253
    :cond_e
    if-eqz v33, :cond_f

    .line 1254
    const-string v37, "Version"

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 1255
    const-string v37, "V 11.11.28"

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    :cond_f
    if-eqz v32, :cond_17

    .line 1260
    const/16 v37, 0x11

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setGravity(I)V

    .line 1263
    :goto_4
    const/16 v37, 0x0

    const v38, 0x3f933333    # 1.15f

    invoke-virtual/range {v36 .. v38}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1267
    .end local v30    # "text":Ljava/lang/String;
    .end local v31    # "textColor":Ljava/lang/String;
    .end local v32    # "textGravity":Ljava/lang/String;
    .end local v33    # "textID":Ljava/lang/String;
    .end local v34    # "textSize":Ljava/lang/String;
    .end local v36    # "tv":Landroid/widget/TextView;
    :cond_10
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v37, v0

    if-eqz v37, :cond_11

    .line 1270
    const-string v37, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1271
    .local v21, "offimage":Ljava/lang/String;
    const-string v37, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "onimage":Ljava/lang/String;
    move-object/from16 v8, v27

    .line 1273
    check-cast v8, Landroid/widget/Button;

    .line 1276
    .local v8, "btn":Landroid/widget/Button;
    const/4 v6, 0x0

    .local v6, "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1278
    .local v7, "btOver":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ".png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 1279
    .local v17, "isStream":Ljava/io/InputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1281
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ".png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 1282
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1284
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1285
    .local v9, "drawables":Landroid/graphics/drawable/StateListDrawable;
    const v29, 0x10100a7

    .line 1286
    .local v29, "statePressed":I
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v29, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v9, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1287
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v9, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1288
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1291
    const-string v37, "btn_con_sel"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_18

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1300
    .end local v6    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v7    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v9    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v17    # "isStream":Ljava/io/InputStream;
    .end local v21    # "offimage":Ljava/lang/String;
    .end local v22    # "onimage":Ljava/lang/String;
    .end local v29    # "statePressed":I
    :cond_11
    :goto_5
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v37, v0

    if-eqz v37, :cond_14

    move-object/from16 v10, v27

    .line 1302
    check-cast v10, Landroid/widget/EditText;

    .line 1303
    .local v10, "editText":Landroid/widget/EditText;
    const-string v37, ""

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1306
    const-string v37, "a:maxLength"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1307
    .local v19, "maxLength":Ljava/lang/String;
    if-eqz v19, :cond_12

    .line 1308
    invoke-virtual {v10}, Landroid/widget/EditText;->setSingleLine()V

    .line 1309
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v11, v0, [Landroid/text/InputFilter;

    .line 1310
    .local v11, "filterArray":[Landroid/text/InputFilter;
    const/16 v37, 0x0

    new-instance v38, Landroid/text/InputFilter$LengthFilter;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-direct/range {v38 .. v39}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v38, v11, v37

    .line 1311
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1313
    .end local v11    # "filterArray":[Landroid/text/InputFilter;
    :cond_12
    const-string v37, "a:password"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1314
    .local v26, "passwordText":Ljava/lang/String;
    if-eqz v26, :cond_13

    .line 1315
    new-instance v25, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v25 .. v25}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 1316
    .local v25, "passwdtm":Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1319
    .end local v25    # "passwdtm":Landroid/text/method/PasswordTransformationMethod;
    :cond_13
    const-string v37, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1321
    .local v13, "id":Ljava/lang/String;
    if-eqz v13, :cond_14

    .line 1322
    const-string v37, "JuminText1"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_19

    .line 1323
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText1:Landroid/widget/EditText;

    .line 1329
    .end local v10    # "editText":Landroid/widget/EditText;
    .end local v13    # "id":Ljava/lang/String;
    .end local v19    # "maxLength":Ljava/lang/String;
    .end local v26    # "passwordText":Ljava/lang/String;
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->size()I

    move-result v37

    if-lez v37, :cond_0

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1192
    .restart local v18    # "ll":Landroid/widget/LinearLayout;
    .restart local v23    # "orient":Ljava/lang/String;
    :cond_15
    const-string v37, "vertical"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 1193
    const/16 v37, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1217
    .restart local v12    # "gravity":Ljava/lang/String;
    .restart local v14    # "image":Ljava/lang/String;
    .restart local v15    # "imageColor":Ljava/lang/String;
    :cond_16
    const/16 v37, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1262
    .end local v12    # "gravity":Ljava/lang/String;
    .end local v14    # "image":Ljava/lang/String;
    .end local v15    # "imageColor":Ljava/lang/String;
    .end local v18    # "ll":Landroid/widget/LinearLayout;
    .end local v23    # "orient":Ljava/lang/String;
    .restart local v30    # "text":Ljava/lang/String;
    .restart local v31    # "textColor":Ljava/lang/String;
    .restart local v32    # "textGravity":Ljava/lang/String;
    .restart local v33    # "textID":Ljava/lang/String;
    .restart local v34    # "textSize":Ljava/lang/String;
    .restart local v36    # "tv":Landroid/widget/TextView;
    :cond_17
    const/16 v37, 0x13

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1294
    .end local v30    # "text":Ljava/lang/String;
    .end local v31    # "textColor":Ljava/lang/String;
    .end local v32    # "textGravity":Ljava/lang/String;
    .end local v33    # "textID":Ljava/lang/String;
    .end local v34    # "textSize":Ljava/lang/String;
    .end local v36    # "tv":Landroid/widget/TextView;
    .restart local v6    # "btOn":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "btOver":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "btn":Landroid/widget/Button;
    .restart local v9    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .restart local v17    # "isStream":Ljava/io/InputStream;
    .restart local v21    # "offimage":Ljava/lang/String;
    .restart local v22    # "onimage":Ljava/lang/String;
    .restart local v29    # "statePressed":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAuthBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1325
    .end local v6    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v7    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v9    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v17    # "isStream":Ljava/io/InputStream;
    .end local v21    # "offimage":Ljava/lang/String;
    .end local v22    # "onimage":Ljava/lang/String;
    .end local v29    # "statePressed":I
    .restart local v10    # "editText":Landroid/widget/EditText;
    .restart local v13    # "id":Ljava/lang/String;
    .restart local v19    # "maxLength":Ljava/lang/String;
    .restart local v26    # "passwordText":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->m_JuminText2:Landroid/widget/EditText;

    goto :goto_6
.end method

.method private createViewAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 53
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1646
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1647
    .local v24, "name":Ljava/lang/String;
    const/16 v37, 0x0

    .line 1648
    .local v37, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 1649
    .local v6, "atts":Landroid/util/AttributeSet;
    const-string v50, "LinearLayout"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1

    .line 1650
    new-instance v37, Landroid/widget/LinearLayout;

    .end local v37    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1671
    .restart local v37    # "result":Landroid/view/View;
    :goto_0
    if-nez v37, :cond_7

    .line 1672
    const/16 v37, 0x0

    .line 1905
    .end local v37    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v37

    .line 1652
    .restart local v37    # "result":Landroid/view/View;
    :cond_1
    const-string v50, "TextView"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_2

    .line 1653
    new-instance v37, Landroid/widget/TextView;

    .end local v37    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v37    # "result":Landroid/view/View;
    goto :goto_0

    .line 1655
    :cond_2
    const-string v50, "Button"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_3

    .line 1656
    new-instance v37, Landroid/widget/Button;

    .end local v37    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v37    # "result":Landroid/view/View;
    goto :goto_0

    .line 1658
    :cond_3
    const-string v50, "ImageView"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_4

    .line 1659
    new-instance v37, Landroid/widget/ImageView;

    .end local v37    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v37    # "result":Landroid/view/View;
    goto :goto_0

    .line 1661
    :cond_4
    const-string v50, "ScrollView"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_5

    .line 1662
    new-instance v37, Landroid/widget/ScrollView;

    .end local v37    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .restart local v37    # "result":Landroid/view/View;
    goto :goto_0

    .line 1664
    :cond_5
    const-string v50, "CheckBox"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_6

    .line 1665
    new-instance v37, Landroid/widget/CheckBox;

    .end local v37    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v37    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 1668
    :cond_6
    new-instance v50, Ljava/lang/StringBuilder;

    const-string v51, "# UnSupported tag:"

    invoke-direct/range {v50 .. v51}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1674
    :cond_7
    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v50, v0

    if-eqz v50, :cond_11

    move-object/from16 v23, v37

    .line 1675
    check-cast v23, Landroid/widget/LinearLayout;

    .line 1676
    .local v23, "ll":Landroid/widget/LinearLayout;
    const-string v50, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1678
    .local v31, "orient":Ljava/lang/String;
    if-eqz v31, :cond_8

    .line 1679
    const-string v50, "horizontal"

    move-object/from16 v0, v31

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_14

    .line 1680
    const/16 v50, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1686
    :cond_8
    :goto_2
    const-string v50, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1687
    .local v18, "image":Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 1688
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ".png"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 1689
    .local v20, "is":Ljava/io/InputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v50

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1693
    .end local v20    # "is":Ljava/io/InputStream;
    :cond_9
    const-string v50, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1694
    .local v19, "imageColor":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 1697
    const/high16 v50, -0x10000

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1701
    :cond_a
    const-string v50, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1702
    .local v16, "gravity":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 1703
    const-string v50, "center"

    move-object/from16 v0, v16

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_15

    .line 1704
    const/16 v50, 0x11

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1713
    :cond_b
    :goto_3
    const-string v50, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1714
    .local v32, "padding":Ljava/lang/String;
    if-eqz v32, :cond_c

    .line 1715
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v38

    .line 1716
    .local v38, "size":I
    move-object/from16 v0, v23

    move/from16 v1, v38

    move/from16 v2, v38

    move/from16 v3, v38

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1719
    .end local v38    # "size":I
    :cond_c
    const-string v50, "a:paddingleft"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1720
    .local v34, "paddingLeft":Ljava/lang/String;
    const-string v50, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1721
    .local v36, "paddingTop":Ljava/lang/String;
    const-string v50, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1722
    .local v35, "paddingRight":Ljava/lang/String;
    const-string v50, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1723
    .local v33, "paddingBottom":Ljava/lang/String;
    const/16 v40, 0x0

    .local v40, "sizeLeft":I
    const/16 v42, 0x0

    .local v42, "sizeTop":I
    const/16 v41, 0x0

    .local v41, "sizeRight":I
    const/16 v39, 0x0

    .line 1725
    .local v39, "sizeBottom":I
    if-eqz v34, :cond_d

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v40

    .line 1727
    :cond_d
    if-eqz v36, :cond_e

    .line 1728
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v42

    .line 1729
    :cond_e
    if-eqz v35, :cond_f

    .line 1730
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v41

    .line 1731
    :cond_f
    if-eqz v33, :cond_10

    .line 1732
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v39

    .line 1734
    :cond_10
    move-object/from16 v0, v23

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1737
    const-string v50, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1738
    .local v48, "touchMode":Ljava/lang/String;
    if-eqz v48, :cond_11

    .line 1739
    const/16 v50, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1744
    .end local v16    # "gravity":Ljava/lang/String;
    .end local v18    # "image":Ljava/lang/String;
    .end local v19    # "imageColor":Ljava/lang/String;
    .end local v23    # "ll":Landroid/widget/LinearLayout;
    .end local v31    # "orient":Ljava/lang/String;
    .end local v32    # "padding":Ljava/lang/String;
    .end local v33    # "paddingBottom":Ljava/lang/String;
    .end local v34    # "paddingLeft":Ljava/lang/String;
    .end local v35    # "paddingRight":Ljava/lang/String;
    .end local v36    # "paddingTop":Ljava/lang/String;
    .end local v39    # "sizeBottom":I
    .end local v40    # "sizeLeft":I
    .end local v41    # "sizeRight":I
    .end local v42    # "sizeTop":I
    .end local v48    # "touchMode":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v50, v0

    if-eqz v50, :cond_12

    move-object/from16 v22, v37

    .line 1746
    check-cast v22, Landroid/widget/ImageView;

    .line 1748
    .local v22, "iv":Landroid/widget/ImageView;
    const-string v50, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1749
    .restart local v18    # "image":Ljava/lang/String;
    if-eqz v18, :cond_12

    .line 1750
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ".png"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 1751
    .restart local v20    # "is":Ljava/io/InputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v50

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1760
    .end local v18    # "image":Ljava/lang/String;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v22    # "iv":Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v50, v0

    if-eqz v50, :cond_17

    .line 1761
    const-string v50, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1762
    .local v29, "oncheckimage":Ljava/lang/String;
    const-string v50, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "id":Ljava/lang/String;
    move-object/from16 v13, v37

    .line 1764
    check-cast v13, Landroid/widget/CheckBox;

    .line 1766
    .local v13, "checkbtn":Landroid/widget/CheckBox;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1768
    const-string v12, "checkbox_y"

    .line 1772
    .local v12, "checkImage":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1774
    .local v7, "btCheck":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ".png"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v28

    .line 1775
    .local v28, "onStream":Ljava/io/InputStream;
    invoke-static/range {v28 .. v29}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1778
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ".png"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v28

    .line 1779
    move-object/from16 v0, v28

    invoke-static {v0, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1783
    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1784
    .local v14, "drawables":Landroid/graphics/drawable/StateListDrawable;
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1786
    .local v15, "drawables2":Landroid/graphics/drawable/StateListDrawable;
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_0

    move-object/from16 v0, v50

    invoke-virtual {v14, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1787
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_1

    move-object/from16 v0, v50

    invoke-virtual {v14, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1789
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_2

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1790
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_3

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1791
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_4

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1792
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_5

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1793
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_6

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1795
    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1796
    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1798
    const/16 v50, 0x0

    move/from16 v0, v50

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1902
    .end local v7    # "btCheck":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v12    # "checkImage":Ljava/lang/String;
    .end local v13    # "checkbtn":Landroid/widget/CheckBox;
    .end local v14    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "drawables2":Landroid/graphics/drawable/StateListDrawable;
    .end local v17    # "id":Ljava/lang/String;
    .end local v28    # "onStream":Ljava/io/InputStream;
    .end local v29    # "oncheckimage":Ljava/lang/String;
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/Stack;->size()I

    move-result v50

    if-lez v50, :cond_0

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v50

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1681
    .restart local v23    # "ll":Landroid/widget/LinearLayout;
    .restart local v31    # "orient":Ljava/lang/String;
    :cond_14
    const-string v50, "vertical"

    move-object/from16 v0, v31

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_8

    .line 1682
    const/16 v50, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1705
    .restart local v16    # "gravity":Ljava/lang/String;
    .restart local v18    # "image":Ljava/lang/String;
    .restart local v19    # "imageColor":Ljava/lang/String;
    :cond_15
    const-string v50, "right"

    move-object/from16 v0, v16

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_16

    .line 1706
    const/16 v50, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1707
    :cond_16
    const-string v50, "left"

    move-object/from16 v0, v16

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_b

    .line 1708
    const/16 v50, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1803
    .end local v16    # "gravity":Ljava/lang/String;
    .end local v18    # "image":Ljava/lang/String;
    .end local v19    # "imageColor":Ljava/lang/String;
    .end local v23    # "ll":Landroid/widget/LinearLayout;
    .end local v31    # "orient":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v50, v0

    if-eqz v50, :cond_19

    .line 1806
    const-string v50, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1807
    .local v27, "offimage":Ljava/lang/String;
    const-string v50, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "onimage":Ljava/lang/String;
    move-object/from16 v10, v37

    .line 1809
    check-cast v10, Landroid/widget/Button;

    .line 1812
    .local v10, "btn":Landroid/widget/Button;
    const/4 v8, 0x0

    .restart local v8    # "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 1814
    .local v9, "btOver":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ".png"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 1815
    .local v21, "isStream":Ljava/io/InputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1817
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v50

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ".png"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 1818
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1820
    new-instance v14, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1821
    .restart local v14    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    const v43, 0x10100a7

    .line 1822
    .local v43, "statePressed":I
    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput v43, v50, v51

    move-object/from16 v0, v50

    invoke-virtual {v14, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1823
    const/16 v50, 0x0

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v14, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1824
    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1828
    const-string v50, "btn_con_sel"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_18

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->autoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1830
    :cond_18
    const-string v50, "btn_buycancel_sel"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_13

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelAutoPurchaseFormBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1834
    .end local v8    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v9    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v10    # "btn":Landroid/widget/Button;
    .end local v14    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v21    # "isStream":Ljava/io/InputStream;
    .end local v27    # "offimage":Ljava/lang/String;
    .end local v30    # "onimage":Ljava/lang/String;
    .end local v43    # "statePressed":I
    :cond_19
    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v50, v0

    if-eqz v50, :cond_13

    move-object/from16 v49, v37

    .line 1836
    check-cast v49, Landroid/widget/TextView;

    .line 1837
    .local v49, "tv":Landroid/widget/TextView;
    const-string v50, "a:nortext"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1838
    .local v26, "nortext":Ljava/lang/String;
    const-string v50, "a:nametext"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1839
    .local v25, "nametext":Ljava/lang/String;
    const-string v50, "a:centertext"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1840
    .local v11, "centertext":Ljava/lang/String;
    const-string v50, "a:agreetext"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1841
    .local v5, "agreetext":Ljava/lang/String;
    const-string v50, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1842
    .local v47, "textSize":Ljava/lang/String;
    const-string v50, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1843
    .local v44, "textColor":Ljava/lang/String;
    const-string v50, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1844
    .local v45, "textGravity":Ljava/lang/String;
    const-string v50, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1864
    .local v46, "textId":Ljava/lang/String;
    if-eqz v26, :cond_1a

    .line 1866
    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    :cond_1a
    if-eqz v25, :cond_1b

    .line 1870
    const-string v50, "\uc6d4\ubcc4\uc790\ub3d9\uacb0\uc81c \uc0c1\ud488"

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1872
    :cond_1b
    if-eqz v11, :cond_1c

    .line 1873
    const-string v50, "\\n"

    const-string v51, "\n"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1874
    const-string v50, "<\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc548\ub0b4>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \uc8fc\uc758\uc0ac\ud56d\n\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1876
    :cond_1c
    if-eqz v5, :cond_1d

    .line 1878
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    :cond_1d
    if-eqz v47, :cond_1e

    .line 1882
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1883
    :cond_1e
    if-eqz v44, :cond_1f

    .line 1884
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1887
    :cond_1f
    if-eqz v45, :cond_20

    .line 1888
    const-string v50, "center"

    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_21

    .line 1889
    const/16 v50, 0x11

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setGravity(I)V

    .line 1896
    :cond_20
    :goto_5
    const/16 v50, 0x0

    const v51, 0x3f933333    # 1.15f

    invoke-virtual/range {v49 .. v51}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_4

    .line 1890
    :cond_21
    const-string v50, "right"

    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_22

    .line 1891
    const/16 v50, 0x5

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 1892
    :cond_22
    const-string v50, "left"

    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_23

    .line 1893
    const/16 v50, 0x3

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 1895
    :cond_23
    const/16 v50, 0x13

    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 1786
    nop

    :array_0
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 1787
    :array_1
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data

    .line 1789
    :array_2
    .array-data 4
        -0x101009e
        -0x101009c
    .end array-data

    .line 1790
    :array_3
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data

    .line 1791
    :array_4
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    .line 1792
    :array_5
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 1793
    :array_6
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data
.end method

.method private createViewImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 37
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1485
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1486
    .local v18, "name":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1487
    .local v23, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 1488
    .local v6, "atts":Landroid/util/AttributeSet;
    move-object/from16 v5, p2

    .line 1489
    .local v5, "YesNomessage":Ljava/lang/String;
    const-string v34, "LinearLayout"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 1490
    new-instance v23, Landroid/widget/LinearLayout;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1508
    .restart local v23    # "result":Landroid/view/View;
    :goto_0
    if-nez v23, :cond_5

    .line 1509
    const/16 v23, 0x0

    .line 1640
    .end local v23    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v23

    .line 1492
    .restart local v23    # "result":Landroid/view/View;
    :cond_1
    const-string v34, "TextView"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 1493
    new-instance v23, Landroid/widget/TextView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 1495
    :cond_2
    const-string v34, "Button"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 1496
    new-instance v23, Landroid/widget/Button;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 1498
    :cond_3
    const-string v34, "ImageView"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1499
    new-instance v23, Landroid/widget/ImageView;

    .end local v23    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v23    # "result":Landroid/view/View;
    goto :goto_0

    .line 1505
    :cond_4
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "# UnSupported tag:"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    :cond_5
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    move-object/from16 v17, v23

    .line 1512
    check-cast v17, Landroid/widget/LinearLayout;

    .line 1513
    .local v17, "ll":Landroid/widget/LinearLayout;
    const-string v34, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1515
    .local v21, "orient":Ljava/lang/String;
    if-eqz v21, :cond_6

    .line 1516
    const-string v34, "horizontal"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 1517
    const/16 v34, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1523
    :cond_6
    :goto_2
    const-string v34, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1524
    .local v12, "image":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1525
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1526
    .local v14, "is":Ljava/io/InputStream;
    invoke-static {v14, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1530
    .end local v14    # "is":Ljava/io/InputStream;
    :cond_7
    const-string v34, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1531
    .local v13, "imageColor":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 1534
    const/high16 v34, -0x10000

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1538
    :cond_8
    const-string v34, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1539
    .local v11, "gravity":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 1540
    const-string v34, "center"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 1541
    const/16 v34, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1547
    :cond_9
    :goto_3
    const-string v34, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1548
    .local v22, "padding":Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 1549
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v24

    .line 1550
    .local v24, "size":I
    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v24

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1554
    .end local v24    # "size":I
    :cond_a
    const-string v34, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1555
    .local v32, "touchMode":Ljava/lang/String;
    if-eqz v32, :cond_b

    .line 1556
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1561
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v12    # "image":Ljava/lang/String;
    .end local v13    # "imageColor":Ljava/lang/String;
    .end local v17    # "ll":Landroid/widget/LinearLayout;
    .end local v21    # "orient":Ljava/lang/String;
    .end local v22    # "padding":Ljava/lang/String;
    .end local v32    # "touchMode":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v34, v0

    if-eqz v34, :cond_c

    move-object/from16 v16, v23

    .line 1563
    check-cast v16, Landroid/widget/ImageView;

    .line 1565
    .local v16, "iv":Landroid/widget/ImageView;
    const-string v34, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1566
    .restart local v12    # "image":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 1567
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1568
    .restart local v14    # "is":Ljava/io/InputStream;
    invoke-static {v14, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1573
    .end local v12    # "image":Ljava/lang/String;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v16    # "iv":Landroid/widget/ImageView;
    :cond_c
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v34, v0

    if-eqz v34, :cond_11

    move-object/from16 v33, v23

    .line 1574
    check-cast v33, Landroid/widget/TextView;

    .line 1576
    .local v33, "tv":Landroid/widget/TextView;
    const-string v34, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1577
    .local v29, "textID":Ljava/lang/String;
    const-string v34, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1578
    .local v26, "text":Ljava/lang/String;
    move-object/from16 v31, v5

    .line 1579
    .local v31, "textmessage":Ljava/lang/String;
    const-string v34, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1580
    .local v30, "textSize":Ljava/lang/String;
    const-string v34, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1581
    .local v27, "textColor":Ljava/lang/String;
    const-string v34, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1583
    .local v28, "textGravity":Ljava/lang/String;
    if-eqz v26, :cond_d

    .line 1584
    const-string v34, "\\n"

    const-string v35, "\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1585
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    :cond_d
    if-eqz v30, :cond_e

    .line 1588
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1589
    :cond_e
    if-eqz v27, :cond_f

    .line 1590
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1591
    :cond_f
    if-eqz v29, :cond_10

    .line 1594
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    :cond_10
    if-eqz v28, :cond_15

    .line 1599
    const/16 v34, 0x11

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setGravity(I)V

    .line 1602
    :goto_4
    const/16 v34, 0x0

    const v35, 0x3f933333    # 1.15f

    invoke-virtual/range {v33 .. v35}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1606
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "textColor":Ljava/lang/String;
    .end local v28    # "textGravity":Ljava/lang/String;
    .end local v29    # "textID":Ljava/lang/String;
    .end local v30    # "textSize":Ljava/lang/String;
    .end local v31    # "textmessage":Ljava/lang/String;
    .end local v33    # "tv":Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v34, v0

    if-eqz v34, :cond_12

    .line 1609
    const-string v34, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1610
    .local v19, "offimage":Ljava/lang/String;
    const-string v34, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "onimage":Ljava/lang/String;
    move-object/from16 v9, v23

    .line 1612
    check-cast v9, Landroid/widget/Button;

    .line 1615
    .local v9, "btn":Landroid/widget/Button;
    const/4 v7, 0x0

    .local v7, "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 1617
    .local v8, "btOver":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 1618
    .local v15, "isStream":Ljava/io/InputStream;
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1620
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".png"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 1621
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1623
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1624
    .local v10, "drawables":Landroid/graphics/drawable/StateListDrawable;
    const v25, 0x10100a7

    .line 1625
    .local v25, "statePressed":I
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput v25, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1626
    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v10, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1627
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1631
    const-string v34, "btn_con_sel"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->imageBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    .end local v7    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v9    # "btn":Landroid/widget/Button;
    .end local v10    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "isStream":Ljava/io/InputStream;
    .end local v19    # "offimage":Ljava/lang/String;
    .end local v20    # "onimage":Ljava/lang/String;
    .end local v25    # "statePressed":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Stack;->size()I

    move-result v34

    if-lez v34, :cond_0

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1518
    .restart local v17    # "ll":Landroid/widget/LinearLayout;
    .restart local v21    # "orient":Ljava/lang/String;
    :cond_13
    const-string v34, "vertical"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 1519
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1543
    .restart local v11    # "gravity":Ljava/lang/String;
    .restart local v12    # "image":Ljava/lang/String;
    .restart local v13    # "imageColor":Ljava/lang/String;
    :cond_14
    const/16 v34, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1601
    .end local v11    # "gravity":Ljava/lang/String;
    .end local v12    # "image":Ljava/lang/String;
    .end local v13    # "imageColor":Ljava/lang/String;
    .end local v17    # "ll":Landroid/widget/LinearLayout;
    .end local v21    # "orient":Ljava/lang/String;
    .restart local v26    # "text":Ljava/lang/String;
    .restart local v27    # "textColor":Ljava/lang/String;
    .restart local v28    # "textGravity":Ljava/lang/String;
    .restart local v29    # "textID":Ljava/lang/String;
    .restart local v30    # "textSize":Ljava/lang/String;
    .restart local v31    # "textmessage":Ljava/lang/String;
    .restart local v33    # "tv":Landroid/widget/TextView;
    :cond_15
    const/16 v34, 0x13

    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4
.end method

.method private createViewJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 49
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1910
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1911
    .local v22, "name":Ljava/lang/String;
    const/16 v32, 0x0

    .line 1912
    .local v32, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 1913
    .local v5, "atts":Landroid/util/AttributeSet;
    const-string v46, "LinearLayout"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1

    .line 1914
    new-instance v32, Landroid/widget/LinearLayout;

    .end local v32    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1938
    .restart local v32    # "result":Landroid/view/View;
    :goto_0
    if-nez v32, :cond_7

    .line 1939
    const/16 v32, 0x0

    .line 2139
    .end local v32    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v32

    .line 1916
    .restart local v32    # "result":Landroid/view/View;
    :cond_1
    const-string v46, "TextView"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 1917
    new-instance v32, Landroid/widget/TextView;

    .end local v32    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v32    # "result":Landroid/view/View;
    goto :goto_0

    .line 1919
    :cond_2
    const-string v46, "Button"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3

    .line 1920
    new-instance v32, Landroid/widget/Button;

    .end local v32    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v32    # "result":Landroid/view/View;
    goto :goto_0

    .line 1922
    :cond_3
    const-string v46, "ImageView"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 1923
    new-instance v32, Landroid/widget/ImageView;

    .end local v32    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v32    # "result":Landroid/view/View;
    goto :goto_0

    .line 1925
    :cond_4
    const-string v46, "ScrollView"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5

    .line 1926
    new-instance v32, Landroid/widget/ScrollView;

    .end local v32    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .restart local v32    # "result":Landroid/view/View;
    goto :goto_0

    .line 1928
    :cond_5
    const-string v46, "CheckBox"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_6

    .line 1929
    new-instance v32, Landroid/widget/CheckBox;

    .end local v32    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .restart local v32    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 1935
    :cond_6
    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "# UnSupported tag:"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1941
    :cond_7
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v46, v0

    if-eqz v46, :cond_11

    move-object/from16 v21, v32

    .line 1942
    check-cast v21, Landroid/widget/LinearLayout;

    .line 1943
    .local v21, "ll":Landroid/widget/LinearLayout;
    const-string v46, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1945
    .local v26, "orient":Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 1946
    const-string v46, "horizontal"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_19

    .line 1947
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1953
    :cond_8
    :goto_2
    const-string v46, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1954
    .local v16, "image":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 1955
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 1956
    .local v18, "is":Ljava/io/InputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1960
    .end local v18    # "is":Ljava/io/InputStream;
    :cond_9
    const-string v46, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1961
    .local v17, "imageColor":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 1964
    const/high16 v46, -0x10000

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1968
    :cond_a
    const-string v46, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1969
    .local v14, "gravity":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 1970
    const-string v46, "center"

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1a

    .line 1971
    const/16 v46, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1979
    :cond_b
    :goto_3
    const-string v46, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1980
    .local v27, "padding":Ljava/lang/String;
    if-eqz v27, :cond_c

    .line 1981
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v33

    .line 1982
    .local v33, "size":I
    move-object/from16 v0, v21

    move/from16 v1, v33

    move/from16 v2, v33

    move/from16 v3, v33

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1985
    .end local v33    # "size":I
    :cond_c
    const-string v46, "a:paddingleft"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1986
    .local v29, "paddingLeft":Ljava/lang/String;
    const-string v46, "a:paddingTop"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1987
    .local v31, "paddingTop":Ljava/lang/String;
    const-string v46, "a:paddingRight"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1988
    .local v30, "paddingRight":Ljava/lang/String;
    const-string v46, "a:paddingBottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1989
    .local v28, "paddingBottom":Ljava/lang/String;
    const/16 v35, 0x0

    .local v35, "sizeLeft":I
    const/16 v37, 0x0

    .local v37, "sizeTop":I
    const/16 v36, 0x0

    .local v36, "sizeRight":I
    const/16 v34, 0x0

    .line 1991
    .local v34, "sizeBottom":I
    if-eqz v29, :cond_d

    .line 1992
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v35

    .line 1993
    :cond_d
    if-eqz v31, :cond_e

    .line 1994
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v37

    .line 1995
    :cond_e
    if-eqz v30, :cond_f

    .line 1996
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v36

    .line 1997
    :cond_f
    if-eqz v28, :cond_10

    .line 1998
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v34

    .line 2000
    :cond_10
    move-object/from16 v0, v21

    move/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2003
    const-string v46, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2004
    .local v44, "touchMode":Ljava/lang/String;
    if-eqz v44, :cond_11

    .line 2005
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 2010
    .end local v14    # "gravity":Ljava/lang/String;
    .end local v16    # "image":Ljava/lang/String;
    .end local v17    # "imageColor":Ljava/lang/String;
    .end local v21    # "ll":Landroid/widget/LinearLayout;
    .end local v26    # "orient":Ljava/lang/String;
    .end local v27    # "padding":Ljava/lang/String;
    .end local v28    # "paddingBottom":Ljava/lang/String;
    .end local v29    # "paddingLeft":Ljava/lang/String;
    .end local v30    # "paddingRight":Ljava/lang/String;
    .end local v31    # "paddingTop":Ljava/lang/String;
    .end local v34    # "sizeBottom":I
    .end local v35    # "sizeLeft":I
    .end local v36    # "sizeRight":I
    .end local v37    # "sizeTop":I
    .end local v44    # "touchMode":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v46, v0

    if-eqz v46, :cond_12

    move-object/from16 v20, v32

    .line 2012
    check-cast v20, Landroid/widget/ImageView;

    .line 2014
    .local v20, "iv":Landroid/widget/ImageView;
    const-string v46, "a:src"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2015
    .restart local v16    # "image":Ljava/lang/String;
    if-eqz v16, :cond_12

    .line 2016
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 2017
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2023
    .end local v16    # "image":Ljava/lang/String;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v20    # "iv":Landroid/widget/ImageView;
    :cond_12
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v46, v0

    if-eqz v46, :cond_17

    move-object/from16 v45, v32

    .line 2024
    check-cast v45, Landroid/widget/TextView;

    .line 2026
    .local v45, "tv":Landroid/widget/TextView;
    const-string v46, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2027
    .local v42, "textID":Ljava/lang/String;
    const-string v46, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2028
    .local v39, "text":Ljava/lang/String;
    const-string v46, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2029
    .local v43, "textSize":Ljava/lang/String;
    const-string v46, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2030
    .local v40, "textColor":Ljava/lang/String;
    const-string v46, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2032
    .local v41, "textGravity":Ljava/lang/String;
    if-eqz v39, :cond_13

    .line 2033
    const-string v46, "\\n"

    const-string v47, "\n"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v39

    .line 2034
    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2036
    :cond_13
    if-eqz v43, :cond_14

    .line 2037
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2038
    :cond_14
    if-eqz v40, :cond_15

    .line 2039
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2040
    :cond_15
    if-eqz v42, :cond_16

    .line 2043
    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2047
    :cond_16
    if-eqz v41, :cond_1c

    .line 2048
    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setGravity(I)V

    .line 2051
    :goto_4
    const/16 v46, 0x0

    const v47, 0x3f933333    # 1.15f

    invoke-virtual/range {v45 .. v47}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2055
    .end local v39    # "text":Ljava/lang/String;
    .end local v40    # "textColor":Ljava/lang/String;
    .end local v41    # "textGravity":Ljava/lang/String;
    .end local v42    # "textID":Ljava/lang/String;
    .end local v43    # "textSize":Ljava/lang/String;
    .end local v45    # "tv":Landroid/widget/TextView;
    :cond_17
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/CheckBox;

    move/from16 v46, v0

    if-eqz v46, :cond_1d

    .line 2056
    const-string v46, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2057
    .local v25, "onimage":Ljava/lang/String;
    const-string v46, "a:checkid"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "id":Ljava/lang/String;
    move-object/from16 v11, v32

    .line 2059
    check-cast v11, Landroid/widget/CheckBox;

    .line 2061
    .local v11, "checkbtn":Landroid/widget/CheckBox;
    invoke-virtual {v11, v15}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 2063
    const-string v10, "checkbox_y"

    .line 2067
    .local v10, "checkImage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 2069
    .local v6, "btCheck":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 2070
    .local v24, "onStream":Ljava/io/InputStream;
    invoke-static/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2073
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 2074
    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2078
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2079
    .local v12, "drawables":Landroid/graphics/drawable/StateListDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2081
    .local v13, "drawables2":Landroid/graphics/drawable/StateListDrawable;
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_0

    move-object/from16 v0, v46

    invoke-virtual {v12, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2082
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_1

    move-object/from16 v0, v46

    invoke-virtual {v12, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2084
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_2

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2085
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_3

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2086
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_4

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2087
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_5

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2088
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    fill-array-data v46, :array_6

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2090
    invoke-virtual {v11, v13}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2091
    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2093
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->changeCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2136
    .end local v6    # "btCheck":Landroid/graphics/drawable/Drawable;
    .end local v7    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v10    # "checkImage":Ljava/lang/String;
    .end local v11    # "checkbtn":Landroid/widget/CheckBox;
    .end local v12    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v13    # "drawables2":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "id":Ljava/lang/String;
    .end local v24    # "onStream":Ljava/io/InputStream;
    .end local v25    # "onimage":Ljava/lang/String;
    :cond_18
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Stack;->size()I

    move-result v46

    if-lez v46, :cond_0

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v46

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1948
    .restart local v21    # "ll":Landroid/widget/LinearLayout;
    .restart local v26    # "orient":Ljava/lang/String;
    :cond_19
    const-string v46, "vertical"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_8

    .line 1949
    const/16 v46, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1972
    .restart local v14    # "gravity":Ljava/lang/String;
    .restart local v16    # "image":Ljava/lang/String;
    .restart local v17    # "imageColor":Ljava/lang/String;
    :cond_1a
    const-string v46, "left"

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1b

    .line 1973
    const/16 v46, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1975
    :cond_1b
    const/16 v46, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 2050
    .end local v14    # "gravity":Ljava/lang/String;
    .end local v16    # "image":Ljava/lang/String;
    .end local v17    # "imageColor":Ljava/lang/String;
    .end local v21    # "ll":Landroid/widget/LinearLayout;
    .end local v26    # "orient":Ljava/lang/String;
    .restart local v39    # "text":Ljava/lang/String;
    .restart local v40    # "textColor":Ljava/lang/String;
    .restart local v41    # "textGravity":Ljava/lang/String;
    .restart local v42    # "textID":Ljava/lang/String;
    .restart local v43    # "textSize":Ljava/lang/String;
    .restart local v45    # "tv":Landroid/widget/TextView;
    :cond_1c
    const/16 v46, 0x13

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 2098
    .end local v39    # "text":Ljava/lang/String;
    .end local v40    # "textColor":Ljava/lang/String;
    .end local v41    # "textGravity":Ljava/lang/String;
    .end local v42    # "textID":Ljava/lang/String;
    .end local v43    # "textSize":Ljava/lang/String;
    .end local v45    # "tv":Landroid/widget/TextView;
    :cond_1d
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v46, v0

    if-eqz v46, :cond_18

    .line 2101
    const-string v46, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2102
    .local v23, "offimage":Ljava/lang/String;
    const-string v46, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2105
    .restart local v25    # "onimage":Ljava/lang/String;
    if-eqz v23, :cond_18

    move-object/from16 v9, v32

    .line 2106
    check-cast v9, Landroid/widget/Button;

    .line 2109
    .local v9, "btn":Landroid/widget/Button;
    const/4 v7, 0x0

    .restart local v7    # "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 2111
    .local v8, "btOver":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 2112
    .local v19, "isStream":Ljava/io/InputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ".png"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 2115
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2117
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2118
    .restart local v12    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    const v38, 0x10100a7

    .line 2119
    .local v38, "statePressed":I
    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, v46

    invoke-virtual {v12, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2120
    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v12, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2121
    invoke-virtual {v9, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2123
    const-string v46, "btn_con_sel"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1e

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okJoinBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2125
    :cond_1e
    const-string v46, "btn_cancel_sel_h"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1f

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelJoinBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2127
    :cond_1f
    const-string v46, "btn_terms_sel_b"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_20

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn1:Landroid/view/View$OnClickListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2129
    :cond_20
    const-string v46, "btn_terms_sel_b2"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_21

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn2:Landroid/view/View$OnClickListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2131
    :cond_21
    const-string v46, "btn_policy_sel_b"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_18

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->moreInfoFormBtn3:Landroid/view/View$OnClickListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2081
    nop

    :array_0
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 2082
    :array_1
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data

    .line 2084
    :array_2
    .array-data 4
        -0x101009e
        -0x101009c
    .end array-data

    .line 2085
    :array_3
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data

    .line 2086
    :array_4
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    .line 2087
    :array_5
    .array-data 4
        -0x10100a0
        -0x101009c
    .end array-data

    .line 2088
    :array_6
    .array-data 4
        0x10100a0
        -0x101009c
    .end array-data
.end method

.method private createViewYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 35
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1337
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1338
    .local v16, "name":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1339
    .local v21, "result":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 1340
    .local v5, "atts":Landroid/util/AttributeSet;
    move-object/from16 v4, p2

    .line 1341
    .local v4, "YesNomessage":Ljava/lang/String;
    const-string v32, "LinearLayout"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 1342
    new-instance v21, Landroid/widget/LinearLayout;

    .end local v21    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1357
    .restart local v21    # "result":Landroid/view/View;
    :goto_0
    if-nez v21, :cond_4

    .line 1358
    const/16 v21, 0x0

    .line 1480
    .end local v21    # "result":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v21

    .line 1344
    .restart local v21    # "result":Landroid/view/View;
    :cond_1
    const-string v32, "TextView"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 1345
    new-instance v21, Landroid/widget/TextView;

    .end local v21    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v21    # "result":Landroid/view/View;
    goto :goto_0

    .line 1347
    :cond_2
    const-string v32, "Button"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 1348
    new-instance v21, Landroid/widget/Button;

    .end local v21    # "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .restart local v21    # "result":Landroid/view/View;
    goto :goto_0

    .line 1354
    :cond_3
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "# UnSupported tag:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    :cond_4
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    move-object/from16 v15, v21

    .line 1361
    check-cast v15, Landroid/widget/LinearLayout;

    .line 1362
    .local v15, "ll":Landroid/widget/LinearLayout;
    const-string v32, "a:orientation"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1364
    .local v19, "orient":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 1365
    const-string v32, "horizontal"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 1366
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1372
    :cond_5
    :goto_2
    const-string v32, "a:background"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1373
    .local v11, "image":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 1374
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".png"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 1375
    .local v13, "is":Ljava/io/InputStream;
    invoke-static {v13, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1379
    .end local v13    # "is":Ljava/io/InputStream;
    :cond_6
    const-string v32, "a:backgroudcolor"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1380
    .local v12, "imageColor":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1383
    const/high16 v32, -0x10000

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1387
    :cond_7
    const-string v32, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1388
    .local v10, "gravity":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1389
    const-string v32, "center"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1390
    const/16 v32, 0x11

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1396
    :cond_8
    :goto_3
    const-string v32, "a:padding"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1397
    .local v20, "padding":Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 1398
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v22

    .line 1399
    .local v22, "size":I
    move/from16 v0, v22

    move/from16 v1, v22

    move/from16 v2, v22

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1403
    .end local v22    # "size":I
    :cond_9
    const-string v32, "a:focusableInTouchMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1404
    .local v30, "touchMode":Ljava/lang/String;
    if-eqz v30, :cond_a

    .line 1405
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1411
    .end local v10    # "gravity":Ljava/lang/String;
    .end local v11    # "image":Ljava/lang/String;
    .end local v12    # "imageColor":Ljava/lang/String;
    .end local v15    # "ll":Landroid/widget/LinearLayout;
    .end local v19    # "orient":Ljava/lang/String;
    .end local v20    # "padding":Ljava/lang/String;
    .end local v30    # "touchMode":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v31, v21

    .line 1412
    check-cast v31, Landroid/widget/TextView;

    .line 1414
    .local v31, "tv":Landroid/widget/TextView;
    const-string v32, "a:id"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1415
    .local v27, "textID":Ljava/lang/String;
    const-string v32, "a:text"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1416
    .local v24, "text":Ljava/lang/String;
    move-object/from16 v29, v4

    .line 1417
    .local v29, "textmessage":Ljava/lang/String;
    const-string v32, "a:textSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1418
    .local v28, "textSize":Ljava/lang/String;
    const-string v32, "a:textColor"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1419
    .local v25, "textColor":Ljava/lang/String;
    const-string v32, "a:gravity"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1421
    .local v26, "textGravity":Ljava/lang/String;
    if-eqz v24, :cond_b

    .line 1422
    const-string v32, "\\n"

    const-string v33, "\n"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 1423
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    :cond_b
    if-eqz v28, :cond_c

    .line 1426
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->readFontSize(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1427
    :cond_c
    if-eqz v25, :cond_d

    .line 1428
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1429
    :cond_d
    if-eqz v27, :cond_e

    .line 1432
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    :cond_e
    if-eqz v26, :cond_13

    .line 1437
    const/16 v32, 0x11

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setGravity(I)V

    .line 1440
    :goto_4
    const/16 v32, 0x0

    const v33, 0x3f933333    # 1.15f

    invoke-virtual/range {v31 .. v33}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1444
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "textColor":Ljava/lang/String;
    .end local v26    # "textGravity":Ljava/lang/String;
    .end local v27    # "textID":Ljava/lang/String;
    .end local v28    # "textSize":Ljava/lang/String;
    .end local v29    # "textmessage":Ljava/lang/String;
    .end local v31    # "tv":Landroid/widget/TextView;
    :cond_f
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 1447
    const-string v32, "a:offImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1448
    .local v17, "offimage":Ljava/lang/String;
    const-string v32, "a:onImage"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "onimage":Ljava/lang/String;
    move-object/from16 v8, v21

    .line 1450
    check-cast v8, Landroid/widget/Button;

    .line 1453
    .local v8, "btn":Landroid/widget/Button;
    const/4 v6, 0x0

    .local v6, "btOn":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1455
    .local v7, "btOver":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".png"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1456
    .local v14, "isStream":Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourcePath()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".png"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 1459
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1461
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1462
    .local v9, "drawables":Landroid/graphics/drawable/StateListDrawable;
    const v23, 0x10100a7

    .line 1463
    .local v23, "statePressed":I
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v23, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v9, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1464
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v9, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1465
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1469
    const-string v32, "btn_con_sel"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->okYesNoBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    .end local v6    # "btOn":Landroid/graphics/drawable/Drawable;
    .end local v7    # "btOver":Landroid/graphics/drawable/Drawable;
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v9    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .end local v14    # "isStream":Ljava/io/InputStream;
    .end local v17    # "offimage":Ljava/lang/String;
    .end local v18    # "onimage":Ljava/lang/String;
    .end local v23    # "statePressed":I
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Stack;->size()I

    move-result v32

    if-lez v32, :cond_0

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v5, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1367
    .restart local v15    # "ll":Landroid/widget/LinearLayout;
    .restart local v19    # "orient":Ljava/lang/String;
    :cond_11
    const-string v32, "vertical"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1368
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1392
    .restart local v10    # "gravity":Ljava/lang/String;
    .restart local v11    # "image":Ljava/lang/String;
    .restart local v12    # "imageColor":Ljava/lang/String;
    :cond_12
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_3

    .line 1439
    .end local v10    # "gravity":Ljava/lang/String;
    .end local v11    # "image":Ljava/lang/String;
    .end local v12    # "imageColor":Ljava/lang/String;
    .end local v15    # "ll":Landroid/widget/LinearLayout;
    .end local v19    # "orient":Ljava/lang/String;
    .restart local v24    # "text":Ljava/lang/String;
    .restart local v25    # "textColor":Ljava/lang/String;
    .restart local v26    # "textGravity":Ljava/lang/String;
    .restart local v27    # "textID":Ljava/lang/String;
    .restart local v28    # "textSize":Ljava/lang/String;
    .restart local v29    # "textmessage":Ljava/lang/String;
    .restart local v31    # "tv":Landroid/widget/TextView;
    :cond_13
    const/16 v32, 0x13

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1472
    .end local v24    # "text":Ljava/lang/String;
    .end local v25    # "textColor":Ljava/lang/String;
    .end local v26    # "textGravity":Ljava/lang/String;
    .end local v27    # "textID":Ljava/lang/String;
    .end local v28    # "textSize":Ljava/lang/String;
    .end local v29    # "textmessage":Ljava/lang/String;
    .end local v31    # "tv":Landroid/widget/TextView;
    .restart local v6    # "btOn":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "btOver":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "btn":Landroid/widget/Button;
    .restart local v9    # "drawables":Landroid/graphics/drawable/StateListDrawable;
    .restart local v14    # "isStream":Ljava/io/InputStream;
    .restart local v17    # "offimage":Ljava/lang/String;
    .restart local v18    # "onimage":Ljava/lang/String;
    .restart local v23    # "statePressed":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cancelYesNoBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private dipToInt(F)I
    .locals 3
    .param p1, "number"    # F

    .prologue
    .line 2385
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 2386
    const/4 v0, 0x0

    .line 2390
    :goto_0
    return v0

    .line 2389
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 2390
    .local v0, "num":I
    goto :goto_0
.end method

.method private findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "atts"    # Landroid/util/AttributeSet;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 2186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2192
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2193
    .local v1, "ix":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2194
    const-string v2, "http://schemas.android.com/apk/res/android"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2197
    .end local v1    # "ix":I
    :goto_1
    return-object v2

    .line 2187
    :cond_0
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2189
    invoke-interface {p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2197
    .restart local v1    # "ix":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->RES_VERT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private getResourceXMLPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2360
    const/4 v0, 0x0

    .line 2362
    .local v0, "path":Ljava/lang/String;
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mKORCarrier:I

    if-ne v1, v2, :cond_0

    .line 2363
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2376
    :goto_0
    return-object v0

    .line 2365
    :cond_0
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_PATH_KTLG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 364
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 366
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 367
    .local v0, "data":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 368
    .local v1, "evt":I
    const/4 v2, 0x0

    .line 370
    .local v2, "root":Landroid/view/View;
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 410
    return-object v2

    .line 371
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 408
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 377
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 381
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 384
    if-nez v2, :cond_2

    .line 385
    move-object v2, v3

    .line 391
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 392
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 388
    .restart local v3    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 396
    .end local v3    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 399
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 401
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 402
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 403
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 914
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 916
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 917
    .local v0, "data":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 918
    .local v1, "evt":I
    const/4 v2, 0x0

    .line 920
    .local v2, "root":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 956
    return-object v2

    .line 921
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 954
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 924
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 927
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 930
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 933
    if-nez v2, :cond_3

    .line 934
    move-object v2, v3

    .line 940
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 941
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 937
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 945
    .end local v3    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 948
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 950
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 951
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1061
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1063
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1064
    .local v0, "data":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1065
    .local v1, "evt":I
    const/4 v2, 0x0

    .line 1067
    .local v2, "root":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1106
    return-object v2

    .line 1068
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1104
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1071
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1074
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewAutoPurchaseFormPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1077
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1080
    if-nez v2, :cond_3

    .line 1081
    move-object v2, v3

    .line 1087
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1088
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1084
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1092
    .end local v3    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1095
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1097
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1098
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1099
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1100
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1011
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    .line 1012
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 1014
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1015
    .local v0, "data":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1016
    .local v1, "evt":I
    const/4 v3, 0x0

    .line 1017
    .local v3, "root":Landroid/view/View;
    move-object v2, p2

    .line 1019
    .local v2, "infomessage":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1055
    return-object v3

    .line 1020
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1053
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1023
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1026
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-direct {p0, p1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewImagePopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 1029
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1032
    if-nez v3, :cond_3

    .line 1033
    move-object v3, v4

    .line 1039
    :goto_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1040
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1036
    .restart local v4    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1044
    .end local v4    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1047
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1049
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1050
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
    .locals 6
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 1112
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1114
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1115
    .local v0, "data":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1116
    .local v1, "evt":I
    const/4 v2, 0x0

    .line 1118
    .local v2, "root":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1157
    return-object v2

    .line 1119
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1155
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1122
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 1125
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewJoinPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;

    move-result-object v3

    .line 1128
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1131
    if-nez v2, :cond_3

    .line 1132
    move-object v2, v3

    .line 1138
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1139
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1135
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1143
    .end local v3    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1146
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1148
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1149
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1150
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->isScrollView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1151
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private inflateYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "parse"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    .line 963
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 965
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 966
    .local v0, "data":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/StringBuffer;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 967
    .local v1, "evt":I
    const/4 v3, 0x0

    .line 968
    .local v3, "root":Landroid/view/View;
    move-object v2, p2

    .line 970
    .local v2, "infomessage":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1006
    return-object v3

    .line 971
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1004
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 974
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_1

    .line 977
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    invoke-direct {p0, p1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->createViewYesNoPopup(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 980
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 983
    if-nez v3, :cond_3

    .line 984
    move-object v3, v4

    .line 990
    :goto_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 991
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 987
    .restart local v4    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 995
    .end local v4    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 998
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1000
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->isLayout(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1001
    iget-object v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string v0, "Layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isScrollView(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    const-string v0, "ScrollView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadLayoutParams(Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 13
    .param p1, "atts"    # Landroid/util/AttributeSet;
    .param p2, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 2219
    const/4 v4, 0x0

    .line 2221
    .local v4, "lps":Landroid/view/ViewGroup$LayoutParams;
    const-string v12, "a:layout_width"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2222
    .local v11, "width":Ljava/lang/String;
    const-string v12, "a:layout_height"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2224
    .local v2, "height":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v9

    .line 2225
    .local v9, "w":I
    invoke-direct {p0, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v1

    .line 2227
    .local v1, "h":I
    instance-of v12, p2, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 2228
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2230
    .restart local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v12, p2, Landroid/widget/ScrollView;

    if-eqz v12, :cond_1

    .line 2231
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2239
    .restart local v4    # "lps":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v12, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_8

    move-object v3, v4

    .line 2240
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2241
    .local v3, "l":Landroid/widget/LinearLayout$LayoutParams;
    const-string v12, "a:layout_gravity"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2242
    .local v0, "gravity":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2243
    const-string v12, "center"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2244
    const/16 v12, 0x11

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2251
    :cond_2
    :goto_0
    const-string v12, "a:layout_weight"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2252
    .local v10, "weight":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 2253
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2256
    :cond_3
    const-string v12, "a:layout_marginTop"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2257
    .local v8, "marginTop":Ljava/lang/String;
    const-string v12, "a:layout_marginLeft"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2258
    .local v6, "marginLeft":Ljava/lang/String;
    const-string v12, "a:layout_marginRight"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2259
    .local v7, "marginRight":Ljava/lang/String;
    const-string v12, "a:layout_marginBottom"

    invoke-direct {p0, p1, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->findAttribute(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2261
    .local v5, "marginBottom":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 2262
    invoke-direct {p0, v8}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2263
    :cond_4
    if-eqz v6, :cond_5

    .line 2264
    invoke-direct {p0, v6}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2265
    :cond_5
    if-eqz v5, :cond_6

    .line 2266
    invoke-direct {p0, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->readSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2267
    :cond_6
    if-eqz v7, :cond_7

    .line 2268
    invoke-direct {p0, v7}, Lcom/feelingk/iap/gui/parser/ParserXML;->readDPSize(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2270
    :cond_7
    move-object v4, v3

    .line 2273
    .end local v0    # "gravity":Ljava/lang/String;
    .end local v3    # "l":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "marginBottom":Ljava/lang/String;
    .end local v6    # "marginLeft":Ljava/lang/String;
    .end local v7    # "marginRight":Ljava/lang/String;
    .end local v8    # "marginTop":Ljava/lang/String;
    .end local v10    # "weight":Ljava/lang/String;
    :cond_8
    return-object v4

    .line 2245
    .restart local v0    # "gravity":Ljava/lang/String;
    .restart local v3    # "l":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    const-string v12, "left"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2246
    const/4 v12, 0x3

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 2248
    :cond_a
    const/4 v12, 0x5

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private lookupId(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 2171
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2172
    .local v1, "ix":I
    if-eq v1, v3, :cond_1

    .line 2173
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2174
    .local v0, "idName":Ljava/lang/String;
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2175
    .local v2, "n":Ljava/lang/Integer;
    if-nez v2, :cond_0

    const-string v4, "@+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2176
    new-instance v2, Ljava/lang/Integer;

    .end local v2    # "n":Ljava/lang/Integer;
    iget v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->idg:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->idg:I

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 2177
    .restart local v2    # "n":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    :cond_0
    if-eqz v2, :cond_1

    .line 2180
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2182
    .end local v0    # "idName":Ljava/lang/String;
    .end local v2    # "n":Ljava/lang/Integer;
    :cond_1
    return v3
.end method

.method private readDPSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2342
    const/4 v1, 0x0

    .line 2345
    .local v1, "size":F
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2347
    const-string v2, "dp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2348
    invoke-direct {p0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->dipToInt(F)I

    move-result v2

    .line 2354
    :goto_0
    return v2

    .line 2351
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2353
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private readFontSize(Ljava/lang/String;)I
    .locals 7
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2322
    const/4 v2, 0x0

    .line 2325
    .local v2, "size":F
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2332
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 2333
    .local v0, "dpChange":F
    float-to-int v3, v0

    .line 2336
    .end local v0    # "dpChange":F
    :goto_0
    return v3

    .line 2335
    :catch_0
    move-exception v1

    .line 2336
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private readSize(Ljava/lang/String;)I
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 2277
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2279
    .local v0, "density":F
    const-string v6, "wrap_content"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2314
    :cond_0
    :goto_0
    return v4

    .line 2282
    :cond_1
    const-string v6, "fill_parent"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 2283
    goto :goto_0

    .line 2285
    :cond_2
    if-eqz p1, :cond_0

    .line 2287
    const/4 v3, 0x0

    .line 2289
    .local v3, "size":F
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2295
    const-string v4, "dp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2296
    invoke-direct {p0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->dipToInt(F)I

    move-result v4

    goto :goto_0

    .line 2302
    :cond_3
    const-string v4, "pt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2303
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 2304
    .local v1, "dpChange":F
    mul-float v4, v1, v0

    float-to-int v4, v4

    goto :goto_0

    .line 2307
    .end local v1    # "dpChange":F
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 2309
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NumberFormatException;
    move v4, v5

    .line 2310
    goto :goto_0
.end method


# virtual methods
.method public ReleaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 223
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->layoutStack:Ljava/util/Stack;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 228
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->ids:Ljava/util/Hashtable;

    .line 231
    :cond_1
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;

    .line 232
    iput-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->onResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 233
    return-void
.end method

.method public Start(ILjava/lang/Object;)Landroid/view/View;
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "objData"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "fileName":Ljava/lang/String;
    iput p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 239
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# purchase Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    check-cast p2, Lcom/feelingk/iap/gui/data/PurchaseItem;

    .end local p2    # "objData":Ljava/lang/Object;
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 244
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    if-eqz v1, :cond_2

    .line 245
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-ne v1, v4, :cond_1

    .line 246
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W_Auto.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H_Auto.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mItemPurchaseItemInfo:Lcom/feelingk/iap/gui/data/PurchaseItem;

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->FinalVersionCheck:Z

    if-eqz v1, :cond_5

    .line 254
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-ne v1, v4, :cond_4

    .line 255
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_5
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-ne v1, v4, :cond_7

    .line 262
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "W_finalVersion.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->getResourceXMLPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->XML_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H_finalVersion.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "xmlFileFname"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 272
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 273
    check-cast p3, Landroid/view/View$OnClickListener;

    .end local p3    # "obj":Ljava/lang/Object;
    iput-object p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 275
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;
    .locals 4
    .param p1, "xmlFileFname"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "orientation"    # I

    .prologue
    .line 298
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 299
    check-cast p3, Landroid/view/View$OnClickListener;

    .end local p3    # "obj":Ljava/lang/Object;
    iput-object p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "fileName":Ljava/lang/String;
    iput p4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 304
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# purchase Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-nez v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "W.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 310
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;
    .locals 4
    .param p1, "xmlFileFname"    # Ljava/lang/String;
    .param p2, "formName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "orientation"    # I

    .prologue
    .line 279
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mFormName:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mInfoMessage:Ljava/lang/String;

    .line 281
    check-cast p4, Landroid/view/View$OnClickListener;

    .end local p4    # "obj":Ljava/lang/Object;
    iput-object p4, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "fileName":Ljava/lang/String;
    iput p5, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    .line 286
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# purchase Start !! GUI-rotate ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML;->orientation:I

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "W.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    invoke-direct {p0, v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "H.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
